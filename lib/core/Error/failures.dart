abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromJson(jsonData) {
    return ServerFailure(
      jsonData['message'],
    );
  }
}

class CacheFailure extends Failure {
  CacheFailure(super.errMessage);
}

class NetWorkFailure extends Failure {
  NetWorkFailure(super.errMessage);
}
