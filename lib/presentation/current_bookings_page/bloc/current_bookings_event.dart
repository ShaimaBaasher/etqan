// ignore_for_file: must_be_immutable

part of 'current_bookings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CurrentBookings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CurrentBookingsEvent extends Equatable {}

/// Event that is dispatched when the CurrentBookings widget is first created.
class CurrentBookingsInitialEvent extends CurrentBookingsEvent {
  @override
  List<Object?> get props => [];
}
