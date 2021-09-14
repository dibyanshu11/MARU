import 'package:dartz/dartz.dart';
import 'package:maaru/core/domain/repositories/user_repository.dart';
import 'package:maaru/core/error/failure.dart';
import 'package:maaru/core/usecases/usecase.dart';

class SendResetPasswordOtp implements UseCase<void, String> {
  UserRepository userRepository;
  SendResetPasswordOtp(this.userRepository);

  @override
  Future<Either<Failure, void>> call(String email) async {
    return userRepository.sendPasswordResetEmail(email);
  }
}
