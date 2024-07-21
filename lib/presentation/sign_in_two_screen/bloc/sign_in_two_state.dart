// ignore_for_file: must_be_immutable

part of 'sign_in_two_bloc.dart';

/// Represents the state of SignInTwo in the application.
class SignInTwoState extends Equatable {
  SignInTwoState({this.signInTwoModelObj});

  SignInTwoModel? signInTwoModelObj;

  @override
  List<Object?> get props => [
        signInTwoModelObj,
      ];
  SignInTwoState copyWith({SignInTwoModel? signInTwoModelObj}) {
    return SignInTwoState(
      signInTwoModelObj: signInTwoModelObj ?? this.signInTwoModelObj,
    );
  }
}
