import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerce/core/errors/failure.dart';
import 'package:fruits_ecommerce/features/auth/domain/entites/user_entity.dart';
import 'package:fruits_ecommerce/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either<Failure, UserEntity>> createdUserWithEmailAndPassword(
    String email,
    String password,
  ) {
    // TODO: implement createdUserWithEmailAndPassword
    throw UnimplementedError();
  }
}
