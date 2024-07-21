// ignore_for_file: must_be_immutable

part of 'sign_in_one_bloc.dart';

/// Represents the state of SignInOne in the application.
class SignInOneState extends Equatable {
  SignInOneState({
    this.otpController,
    this.signInOneModelObj,
  });

  TextEditingController? otpController;

  SignInOneModel? signInOneModelObj;

  @override
  List<Object?> get props => [
        otpController,
        signInOneModelObj,
      ];
  SignInOneState copyWith({
    TextEditingController? otpController,
    SignInOneModel? signInOneModelObj,
  }) {
    return SignInOneState(
      otpController: otpController ?? this.otpController,
      signInOneModelObj: signInOneModelObj ?? this.signInOneModelObj,
    );
  }
}
