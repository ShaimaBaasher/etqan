// ignore_for_file: must_be_immutable

part of 'suceess_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Suceess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SuceessEvent extends Equatable {}

/// Event that is dispatched when the Suceess widget is first created.
class SuceessInitialEvent extends SuceessEvent {
  @override
  List<Object?> get props => [];
}
