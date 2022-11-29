class ServerException implements Exception {
  final String errMessage;

  ServerException(this.errMessage);
}

class CacheException implements Exception {}

class NetWorkException implements Exception {}
