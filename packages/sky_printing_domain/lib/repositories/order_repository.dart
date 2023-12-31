import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

abstract class OrderRepository {
  Future<Either<Failure, List<OrderEntityResponse>>> getOrderByStore(
    GetOrderByStoreParams params,
  );
  Future<Either<Failure, List<OrderEntityResponse>>> getOrderByUser(
    GetOrderByUserParams params,
  );
  Future<Either<Failure, OrderEntity>> getOrderById(
    GetOrderByIdParams params,
  );
  Future<Either<Failure, OrderEntity>> postOrder(
    PostOrderParams params,
  );
  Future<Either<Failure, OrderEntity>> deleteOrderById(
    DeleteOrderByIdParams params,
  );
  Future<Either<Failure, File>> createReportOrder(
    CreateReportOrderParams params,
  );
}
