import 'package:app_structure/core/Error/failures.dart';
import 'package:dartz/dartz.dart';

abstract class RepoName {
// object is whatever returned form api
  Future<Either<Failure, Object>> methodNanme();
}
