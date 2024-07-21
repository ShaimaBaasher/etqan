// ignore_for_file: must_be_immutable

part of 'prev_bookings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PrevBookings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PrevBookingsEvent extends Equatable {}

/// Event that is dispatched when the PrevBookings widget is first created.
class PrevBookingsInitialEvent extends PrevBookingsEvent {
  @override
  List<Object?> get props => [];
}
