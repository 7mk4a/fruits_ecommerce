import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerce/core/errors/failure.dart';
import 'package:fruits_ecommerce/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createdUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  );
}
