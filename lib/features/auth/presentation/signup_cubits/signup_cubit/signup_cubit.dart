import 'package:bloc/bloc.dart';
import 'package:fruits_ecommerce/features/auth/domain/entites/user_entity.dart';
import 'package:fruits_ecommerce/features/auth/domain/repos/auth_repo.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());

  final AuthRepo authRepo;

  Future<void> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    emit(SignupLoading());
    final result = await authRepo.createdUserWithEmailAndPassword(
      email,
      password,
      name,
    );
    result.fold(
      (failure) => emit(SignupFailure(messege: failure.message)),
      (UserEntity) => emit(SignupSuccess(userEntity: UserEntity)),
    );
  }
}
