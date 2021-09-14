import 'package:maaru/core/domain/repositories/user_repository.dart';
import 'package:maaru/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:maaru/core/usecases/usecase.dart';

class GetUpcomingAppointment extends UseCase<void, void> {
  UserRepository userRepository;
  GetUpcomingAppointment(this.userRepository);

  @override
  Future<Either<Failure, void>> call(void params) {
    return userRepository.getUpcomingAppointment();
  }
}
