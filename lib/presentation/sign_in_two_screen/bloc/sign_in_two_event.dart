// ignore_for_file: must_be_immutable

part of 'sign_in_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignInTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignInTwoEvent extends Equatable {}

/// Event that is dispatched when the SignInTwo widget is first created.
class SignInTwoInitialEvent extends SignInTwoEvent {
  @override
  List<Object?> get props => [];
}
