import 'package:dartz/dartz.dart';
import 'package:maaru/core/domain/repositories/user_repository.dart';
import 'package:maaru/core/error/failure.dart';
import 'package:maaru/core/usecases/usecase.dart';

/// This use case is for when user needs to reset password
/// an email link will be sent to users email address if request succeeds
class ResetPassword implements UseCase<void, SetNewPasswordParams> {
  UserRepository userRepository;
  ResetPassword(this.userRepository);

  @override
  Future<Either<Failure, void>> call(SetNewPasswordParams params) async {
    return userRepository.setNewPassword(
        email: params.email, otp: params.otp, password: params.password);
  }
}

class SetNewPasswordParams {
  final String otp;
  final String email;
  final String password;

  SetNewPasswordParams({this.otp, this.email, this.password});
}
