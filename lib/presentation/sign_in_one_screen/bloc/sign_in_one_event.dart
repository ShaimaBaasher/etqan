// ignore_for_file: must_be_immutable

part of 'sign_in_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignInOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignInOneEvent extends Equatable {}

/// Event that is dispatched when the SignInOne widget is first created.
class SignInOneInitialEvent extends SignInOneEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends SignInOneEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
