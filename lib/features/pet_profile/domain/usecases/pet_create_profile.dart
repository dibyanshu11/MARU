import 'package:maaru/core/domain/repositories/user_repository.dart';
import 'package:maaru/core/domain/usecases/pet_profile_auth_params.dart';
import 'package:maaru/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:maaru/core/usecases/usecase.dart';

class PetCreateProfile implements UseCase<void, PetProfileAuthParams> {
  UserRepository userRepository;
  PetCreateProfile(this.userRepository);
  @override
  Future<Either<Failure, void>> call(PetProfileAuthParams params) async {
    return userRepository.petCreateProfile(params);
  }
}
