// ignore_for_file: must_be_immutable

part of 'prev_bookings_bloc.dart';

/// Represents the state of PrevBookings in the application.
class PrevBookingsState extends Equatable {
  PrevBookingsState({this.prevBookingsModelObj});

  PrevBookingsModel? prevBookingsModelObj;

  @override
  List<Object?> get props => [
        prevBookingsModelObj,
      ];
  PrevBookingsState copyWith({PrevBookingsModel? prevBookingsModelObj}) {
    return PrevBookingsState(
      prevBookingsModelObj: prevBookingsModelObj ?? this.prevBookingsModelObj,
    );
  }
}
