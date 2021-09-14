import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:maaru/core/domain/repositories/user_repository.dart';
import 'package:maaru/core/domain/usecases/email_auth_params.dart';
import 'package:maaru/core/error/failure.dart';
import 'package:maaru/core/usecases/usecase.dart';

class EmailSignin implements UseCase<void, EmailAuthParams> {
  UserRepository userRepository;
  EmailSignin(this.userRepository);
  Future<Either<Failure, Void>> call(EmailAuthParams params) async {
    return userRepository.emailLogin(params);
  }
}
