import 'package:dartz/dartz.dart';
import 'package:maaru/core/domain/repositories/user_repository.dart';
import 'package:maaru/core/domain/usecases/email_auth_params.dart';
import 'package:maaru/core/error/failure.dart';
import 'package:maaru/core/usecases/usecase.dart';

/// This class is responsible for Signup using Email and Password.
/// There will be different usecase for EmailLogin because logging in also
/// needs to check ShowAccount to actually register new PrivateKey.
class EmailSignup implements UseCase<void, EmailAuthParams> {
  UserRepository userRepository;
  EmailSignup(this.userRepository);

  Future<Either<Failure, void>> call(EmailAuthParams params) async {
    return userRepository.emailSignup(params);
  }
}
