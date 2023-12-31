import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/error/failure.dart';
import 'package:sky_printing_core/usecase/usecase.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class GetOrderByStoreUsecase
    extends UseCase<List<OrderEntityResponse>, GetOrderByStoreParams> {
  final OrderRepository _repo;

  GetOrderByStoreUsecase(this._repo);

  @override
  Future<Either<Failure, List<OrderEntityResponse>>> call(
          GetOrderByStoreParams params) =>
      _repo.getOrderByStore(params);
}
