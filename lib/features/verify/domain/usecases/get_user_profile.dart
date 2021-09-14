import 'package:dartz/dartz.dart';
import 'package:maaru/core/domain/repositories/user_repository.dart';
import 'package:maaru/core/error/failure.dart';
import 'package:maaru/core/usecases/usecase.dart';

class GetUserProfile implements UseCase<Failure, void> {
  UserRepository userRepository;
  GetUserProfile(this.userRepository);

  @override
  Future<Either<Failure, Failure>> call(void params) async {
    return userRepository.getUserProfile();
  }
}
