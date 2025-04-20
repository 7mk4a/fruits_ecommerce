import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:fruits_ecommerce/core/errors/exceptions.dart';
import 'package:fruits_ecommerce/core/errors/failure.dart';
import 'package:fruits_ecommerce/core/services/firebase_auth_services.dart';
import 'package:fruits_ecommerce/features/auth/data/models/user_model.dart';
import 'package:fruits_ecommerce/features/auth/domain/entites/user_entity.dart';
import 'package:fruits_ecommerce/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  AuthRepoImpl({required this.firebaseAuthServices});
  @override
  Future<Either<Failure, UserEntity>> createdUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      log(
        "AuthRepoImpl.createdUserWithEmailAndPassword started for email: $email and name: $name",
      );
      var user = await firebaseAuthServices.createUserWithEmailAndPassword(
        email,
        password,
      );
      log(
        "AuthRepoImpl.createdUserWithEmailAndPassword succeeded for user: ${user.email}",
      );
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      log(
        "AuthRepoImpl.createdUserWithEmailAndPassword failed with CustomException: ${e.message}",
      );
      return left(ServerFailure(e.message));
    } catch (e) {
      log(
        "AuthRepoImpl.createdUserWithEmailAndPassword failed with unexpected error: ${e.toString()}",
      );
      return left(ServerFailure('An error occurred Please Try Again'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      log(
        "AuthRepoImpl.signInWithEmailAndPassword started for email: $email and name: $name",
      );
      var user = await firebaseAuthServices.signInWithEmailAndPassword(
        email,
        password,
      );
      log(
        "AuthRepoImpl.signInWithEmailAndPassword succeeded for user: ${user.email}",
      );
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log(
        "AuthRepoImpl.signInWithEmailAndPassword failed with unexpected error: ${e.toString()}",
      );
      return left(ServerFailure('An error occurred Please Try Again'));
    }
  }
}
