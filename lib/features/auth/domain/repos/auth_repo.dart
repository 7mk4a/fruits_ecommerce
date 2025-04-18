import 'package:fruits_ecommerce/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<UserEntity> createdUserWithEmailAndPassword(
    String email,
    String password,
  );
}
