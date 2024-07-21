// ignore_for_file: must_be_immutable

part of 'more_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///More widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MoreEvent extends Equatable {}

/// Event that is dispatched when the More widget is first created.
class MoreInitialEvent extends MoreEvent {
  @override
  List<Object?> get props => [];
}
