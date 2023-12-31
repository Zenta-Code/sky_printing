import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class GetOrderByUserUsecase
    extends UseCase<List<OrderEntityResponse>, GetOrderByUserParams> {
  final OrderRepository _repo;

  GetOrderByUserUsecase(this._repo);

  @override
  Future<Either<Failure, List<OrderEntityResponse>>> call(
          GetOrderByUserParams params) =>
      _repo.getOrderByUser(params);
}
