// ignore_for_file: must_be_immutable

part of 'current_bookings_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CurrentBookingsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CurrentBookingsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the CurrentBookingsTabContainer widget is first created.
class CurrentBookingsTabContainerInitialEvent
    extends CurrentBookingsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
