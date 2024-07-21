// ignore_for_file: must_be_immutable

part of 'sign_in_three_bloc.dart';

/// Represents the state of SignInThree in the application.
class SignInThreeState extends Equatable {
  SignInThreeState({this.signInThreeModelObj});

  SignInThreeModel? signInThreeModelObj;

  @override
  List<Object?> get props => [
        signInThreeModelObj,
      ];
  SignInThreeState copyWith({SignInThreeModel? signInThreeModelObj}) {
    return SignInThreeState(
      signInThreeModelObj: signInThreeModelObj ?? this.signInThreeModelObj,
    );
  }
}
