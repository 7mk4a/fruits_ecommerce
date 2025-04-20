import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_ecommerce/core/errors/exceptions.dart';

class FirebaseAuthServices {
  Future<User> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        "Exception in firebase auth services.createUserWithEmailAndPassword ${e.toString()}",
      );
      if (e.code == 'weak-password') {
        throw CustomException(message: 'هذا الرقم السري ضعيف.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'هذا البريد الالكتروني مستخدم بالفعل');
      } else {
        throw CustomException(message: 'لقد حدث خطأ ما برجاء المحاولة لاحقا');
      }
    } catch (e) {
      throw CustomException(message: 'لقد حدث خطأ ما برجاء المحاولة لاحقا');
    }
  }
}
