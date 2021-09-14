import 'package:maaru/core/error/failure.dart';
// ignore: todo
/// TODO: When user is not found on Server, this is the error that is thrown

class UserNotFolundFailure extends Failure {
  @override
  String toString() {
    return 'UserNotFoundFailure';
  }
}

/// In email-password based login, this error will be thrown when password
/// is incorrect
class BadCredentailsFailure extends Failure {
  @override
  String toString() {
    return 'BadCerdentialsFailure';
  }
}

/// In email-password based login, this error will be thrown when email
/// already exist
class EmailAlreadyInUseFailure extends Failure {
  @override
  String toString() {
    return "EmailAlreadyInUseFailure";
  }
}

/// Every other type of authentication failure will be covered by this.

class UnknownAuthenticationFailure extends Failure {
  final String message;
  UnknownAuthenticationFailure(this.message);

  @override
  String toString() {
    return "UnknownAuthenticationFailure:$message";
  }
}

//  Social signin cancelled by user will be cover by this failure type

class UserCancelledSigninFailure extends Failure {
  final String message;
  UserCancelledSigninFailure(this.message);

  @override
  String toString() {
    return "UserCancelledSigninFailure:$message";
  }
}
