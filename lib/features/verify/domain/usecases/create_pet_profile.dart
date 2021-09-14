import 'package:dartz/dartz.dart';
import 'package:maaru/core/domain/repositories/user_repository.dart';
import 'package:maaru/core/error/failure.dart';
import 'package:maaru/core/usecases/usecase.dart';

class CreatePetProfile extends UseCase<void, void> {
  UserRepository userRepository;
  CreatePetProfile(this.userRepository);

  @override
  Future<Either<Failure, void>> call(void params) async {
    return userRepository.createPetProfile();
  }
}
