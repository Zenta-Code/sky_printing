abstract class Failure {
  /// ignore: avoid_unused_constructor_parameters
  const Failure([List properties = const <dynamic>[]]);
}

class ServerFailure extends Failure {
  final String? message;

  const ServerFailure(this.message);

  @override
  bool operator ==(Object other) =>
      other is ServerFailure && other.message == message;

  @override
  int get hashCode => message.hashCode;
}

class NoDataFailure extends Failure {
  @override
  bool operator ==(Object other) => other is NoDataFailure;

  @override
  int get hashCode => 0;
}

class CacheFailure extends Failure {
  @override
  bool operator ==(Object other) => other is CacheFailure;

  @override
  int get hashCode => 0;
}

class PermissionFailure extends Failure {
  final String? message;

  const PermissionFailure({this.message});

  @override
  bool operator ==(Object other) => other is PermissionFailure;

  @override
  int get hashCode => 0;
}

class LocationFailure extends Failure {
  final String? message;

  const LocationFailure({this.message});

  @override
  bool operator ==(Object other) => other is LocationFailure;

  @override
  int get hashCode => 0;
}

class LocalFailure extends Failure {
  final String? message;

  const LocalFailure({this.message});

  @override
  bool operator ==(Object other) => other is LocalFailure;

  @override
  int get hashCode => 0;
}
