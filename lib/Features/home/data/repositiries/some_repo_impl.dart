import 'package:app_structure/Features/home/data/models/model_name.dart';
import 'package:app_structure/Features/home/data/repositiries/some_repo.dart';
import 'package:app_structure/core/Error/failures.dart';
import 'package:app_structure/core/utils/api.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';

class RepoNameImpl implements RepoName {
  final Api api;

  RepoNameImpl(this.api);

  @override
  Future<Either<Failure, ModelName>> methodNanme() {
    // TODO: implement methodNanme
    throw UnimplementedError();
  }
}
