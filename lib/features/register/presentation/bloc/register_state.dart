part of 'register_bloc.dart';

// ignore: todo
//TODO: State class for registration Screen

abstract class RegisterState {
  RegisterState();
}

/// Register Initial
/// This State is  when register is opened
class RegisterInitial extends RegisterState {
  RegisterInitial() : super();
  @override
  String toString() => 'RegisterInitial';
}

// Register In Process
// This State is registration In Process

class RegisterInProcess extends RegisterState {
  RegisterInProcess() : super();

  @override
  String toString() => 'RegisterInProcess';
}

// Register Success
//  This State is registration In Success

class RegisterSuccess extends RegisterState {
  RegisterSuccess() : super();

  @override
  String toString() => "RegisterSuccess";
}

// Register In Failure
// This State is registration In Failure

class RegisterFailure extends RegisterState {
  final String errorMessage;
  RegisterFailure(this.errorMessage) : super();
  @override
  String toString() => "RegisterFailure";
}

/// Register Form Validation
//  This State is registration Form Validation Process

class RegisterFormValidationSuccess extends RegisterState {
  RegisterFormValidationSuccess() : super();

  @override
  String toString() => "RegisterFormValidationSuccess";
}

// Register In  Form ValidationFailure
// This State is Registration Form Validation In Process

class RegisterFormValidationFailure extends RegisterState {
  RegisterFormValidationFailure() : super();

  @override
  String toString() => "RegisterFormValidationFailure";
}
