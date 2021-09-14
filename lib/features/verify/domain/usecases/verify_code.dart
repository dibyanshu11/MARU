import 'package:dartz/dartz.dart';
import 'package:maaru/core/domain/repositories/user_repository.dart';
import 'package:maaru/core/error/failure.dart';
import 'package:maaru/core/usecases/usecase.dart';

/// This class is responsible for Signup using Email and Password.
/// There will be different usecase for EmailLogin because logging in also
/// needs to check ShowAccount to actually register new PrivateKey.
class VerifyCode implements UseCase<void, VerifyParams> {
  UserRepository userRepository;
  VerifyCode(this.userRepository);

  @override
  Future<Either<Failure, void>> call(params) async {
    return userRepository.verifyCode(params);
  }
}

class VerifyParams {
  final String email;
  final String code;
  VerifyParams(this.code, this.email);
}
