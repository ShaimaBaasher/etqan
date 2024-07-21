// ignore_for_file: must_be_immutable

part of 'sign_in_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignInThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignInThreeEvent extends Equatable {}

/// Event that is dispatched when the SignInThree widget is first created.
class SignInThreeInitialEvent extends SignInThreeEvent {
  @override
  List<Object?> get props => [];
}
