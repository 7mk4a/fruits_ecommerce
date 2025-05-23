import 'package:fruits_ecommerce/core/services/firebase_auth_services.dart';
import 'package:fruits_ecommerce/features/auth/data/repos/auth_repo_impl.dart';
import 'package:fruits_ecommerce/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(firebaseAuthServices: getIt<FirebaseAuthServices>()),
  );
}
