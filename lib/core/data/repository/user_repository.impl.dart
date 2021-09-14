import 'package:dartz/dartz.dart';
import 'dart:ffi';
import 'package:maaru/core/data/datasource/auth_source.dart';
import 'package:maaru/core/data/datasource/shared_pref_helper.dart';
import 'package:maaru/core/domain/repositories/user_repository.dart';
import 'package:maaru/core/error/failure.dart';
import 'package:maaru/core/domain/usecases/email_auth_params.dart';
import 'package:maaru/features/verify/domain/usecases/verify_code.dart';
import 'package:maaru/features/verify/domain/usecases/save_user_profile.dart';
import 'package:maaru/features/verify/domain/usecases/save_pet_profile.dart';

class UserRepositoryImpl implements UserRepository {
  final AuthSource authSource;
  final SharedPrefHelper sharedPrefHelper;
  UserRepositoryImpl(this.authSource, this.sharedPrefHelper);

  @override
  Future<Either<Failure, Void>> emailLogin(EmailAuthParams params) {
    // TODO: implement emailLogin
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Void>> emailSignup(EmailAuthParams params) {
    // TODO: implement emailSignup
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> resendOtp(String email) {
    // TODO: implement resendOtp
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> sendPasswordResetEmail(String email) {
    // TODO: implement sendPasswordResetEmail
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> getProfile() {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> petCreateProfile(params) {
    // TODO: implement petProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> createPetProfile() {
    // TODO: implement createPetProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> createUserProfile() {
    // TODO: implement createUserProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> getPastAppointment() {
    // TODO: implement getPastAppointment
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> getPetProfile() {
    // TODO: implement getPetProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> getUpcomingAppointment() {
    // TODO: implement getUpcomingAppointment
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> getUserProfile() {
    // TODO: implement getUserProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> savePetProfile(PetProfileParams params) {
    // TODO: implement savePetProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> saveUserProfile(UserProfileParams params) {
    // TODO: implement saveUserProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> setNewPassword(
      {String email, String otp, String password}) {
    // TODO: implement setNewPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> verifyCode(VerifyParams params) {
    // TODO: implement verifyCode
    throw UnimplementedError();
  }
}
