import 'package:kiwi/kiwi.dart';
import 'package:maaru/core/data/datasource/auth_source.dart';
import 'package:maaru/core/data/datasource/shared_pref_helper.dart';
import 'package:maaru/core/data/datasource/storage.dart';
import 'package:maaru/core/data/datasource/user_service.dart';
import 'package:maaru/core/data/repository/user_repository.impl.dart';
import 'package:maaru/core/domain/repositories/user_repository.dart';
import 'package:maaru/features/login/domain/usecases/emailsignin.dart';
import 'package:maaru/features/register/domain/usecases/email_signup.dart';
import 'package:maaru/features/register/presentation/bloc/register_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> registerDependencyInjection() async {
  var container = KiwiContainer();

  await _registerMisc(container);
  await _registerApiClient(container);
  await _registerDataSources(container);
  _registerRepositories(container);
  _registerUseCases(container);
  _registerBloc(container);
}

void _registerBloc(KiwiContainer container) {
  container.registerFactory((c) => RegisterBloc(c.resolve()));
//   container.registerFactory(
//       (c) => LoginBloc(c.resolve(), c.resolve(), c.resolve(), c.resolve()));
//  container.registerFactory((c) => ResetBloc(c.resolve(), c.resolve()));
//  // container.registerFactory((c) => ProfileBloc(c.resolve(), c.resolve()));
//  // container.registerFactory((c) => KProfileBloc(c.resolve(), c.resolve()));
//   container.registerFactory((c) => VerifyBloc(
//       c.resolve(), c.resolve(), c.resolve(), c.resolve(), c.resolve()));
}

void _registerUseCases(KiwiContainer container) {
  container.registerFactory((c) => EmailSignin(c.resolve()));
  container.registerFactory((c) => EmailSignup(c.resolve()));
  // container.registerFactory((c) => ResendCode(c.resolve()));
  // container.registerFactory((c) => SendResetPasswordOtp(c.resolve()));
  // container.registerFactory((c) => VerifyCode(c.resolve()));
  // container.registerFactory((c) => SaveProfile(c.resolve()));
  // container.registerFactory((c) => GetProfile(c.resolve()));
  // container.registerFactory((c) => CreateProfile(c.resolve()));
  // container.registerFactory((c) => SaveDebug(c.resolve()));
  // container.registerFactory((c) => ResetPassword(c.resolve()));
  // container.registerFactory((c) => SaveRegistrationId(c.resolve()));
  // container.registerFactory((c) => SaveSingleField(c.resolve()));
}

void _registerRepositories(KiwiContainer container) {
  container.registerFactory<UserRepository>(
      (c) => UserRepositoryImpl(c.resolve(), c.resolve()));
}

_registerDataSources(KiwiContainer container) {
  container.registerFactory<AuthSource>(
      (c) => UserService(c.resolve(), c.resolve(), c.resolve()));
  container.registerFactory<SharedPrefHelper>(
      (c) => SharedPrefHelperImpl(c.resolve()));
}

_registerApiClient(KiwiContainer container) {}

_registerMisc(KiwiContainer container) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  container.registerFactory((c) => sharedPreferences);
  container.registerFactory((c) => Storage(sharedPreferences));
//  container.registerFactory((c) => new CognitoUserPool(
  // KompanionConstants.poolid, KompanionConstants.clientid));
}
