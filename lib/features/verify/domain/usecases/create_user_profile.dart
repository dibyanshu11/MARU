import 'package:dartz/dartz.dart';
import 'package:maaru/core/domain/repositories/user_repository.dart';
import 'package:maaru/core/error/failure.dart';
import 'package:maaru/core/usecases/usecase.dart';

class CreateUserProfile implements UseCase<void, void> {
  UserRepository userRepository;
  CreateUserProfile(this.userRepository);

  @override
  Future<Either<Failure, void>> call(void params) async {
    return userRepository.createUserProfile();
  }
}
