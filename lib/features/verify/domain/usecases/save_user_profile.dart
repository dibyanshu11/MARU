import 'package:dartz/dartz.dart';
import 'package:maaru/core/domain/repositories/user_repository.dart';
import 'package:maaru/core/error/failure.dart';
import 'package:maaru/core/usecases/usecase.dart';

class SaveUserProfile implements UseCase<void, UserProfileParams> {
  UserRepository userRepository;
  SaveUserProfile(this.userRepository);

  @override
  Future<Either<Failure, void>> call(UserProfileParams params) async {
    return userRepository.saveUserProfile(params);
  }
}

class UserProfileParams {
  final String profileImage;
  final String firstName;
  final String lastName;
  final String password;
  final String payment;

  UserProfileParams(
      {this.profileImage,
      this.firstName,
      this.lastName,
      this.password,
      this.payment});
}
