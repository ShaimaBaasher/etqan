// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

/// Represents the state of SignIn in the application.
class SignInState extends Equatable {
  SignInState({
    this.fullnameController,
    this.emailController,
    this.signInModelObj,
  });

  TextEditingController? fullnameController;

  TextEditingController? emailController;

  SignInModel? signInModelObj;

  @override
  List<Object?> get props => [
        fullnameController,
        emailController,
        signInModelObj,
      ];
  SignInState copyWith({
    TextEditingController? fullnameController,
    TextEditingController? emailController,
    SignInModel? signInModelObj,
  }) {
    return SignInState(
      fullnameController: fullnameController ?? this.fullnameController,
      emailController: emailController ?? this.emailController,
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}
