import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

part 'register_cubit.freezed.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final PostStoreUsecase _postStoreUsecase;

  /// Handle state visibility password
  bool? isPasswordHide = true;
  bool? isConfirmPasswordHide = true;

  RegisterCubit(
    this._postStoreUsecase,
  ) : super(const _Loading());

  void showHidePassword() {
    safeEmit(
      const _Init(),
      emit: emit,
      isClosed: isClosed,
    );
    isPasswordHide = !(isPasswordHide ?? false);
    safeEmit(
      const _ShowHidePassword(),
      emit: emit,
      isClosed: isClosed,
    );
  }

  void showHideConfirmPassword() {
    safeEmit(
      const _Init(),
      emit: emit,
      isClosed: isClosed,
    );
    isConfirmPasswordHide = !(isConfirmPasswordHide ?? false);
    safeEmit(
      const _ShowHidePassword(),
      emit: emit,
      isClosed: isClosed,
    );
  }

  Future<void> register(StoreRegisterParams params) async {
    safeEmit(
      const _Loading(),
      emit: emit,
      isClosed: isClosed,
    );
    final data = await _postStoreUsecase.call(params);
    data.fold(
      (l) {
        if (l is ServerFailure) {
          safeEmit(
            _Failure(l.message ?? ""),
            emit: emit,
            isClosed: isClosed,
          );
        }
      },
      (r) => safeEmit(
        _Success(null),
        emit: emit,
        isClosed: isClosed,
      ),
    );
  }
}
