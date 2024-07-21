// ignore_for_file: must_be_immutable

part of 'suceess_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SuceessOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SuceessOneEvent extends Equatable {}

/// Event that is dispatched when the SuceessOne widget is first created.
class SuceessOneInitialEvent extends SuceessOneEvent {
  @override
  List<Object?> get props => [];
}
