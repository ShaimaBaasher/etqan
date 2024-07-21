// ignore_for_file: must_be_immutable

part of 'current_bookings_bloc.dart';

/// Represents the state of CurrentBookings in the application.
class CurrentBookingsState extends Equatable {
  CurrentBookingsState({this.currentBookingsModelObj});

  CurrentBookingsModel? currentBookingsModelObj;

  @override
  List<Object?> get props => [
        currentBookingsModelObj,
      ];
  CurrentBookingsState copyWith(
      {CurrentBookingsModel? currentBookingsModelObj}) {
    return CurrentBookingsState(
      currentBookingsModelObj:
          currentBookingsModelObj ?? this.currentBookingsModelObj,
    );
  }
}
