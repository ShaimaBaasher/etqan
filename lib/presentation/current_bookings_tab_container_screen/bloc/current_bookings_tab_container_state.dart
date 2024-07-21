// ignore_for_file: must_be_immutable

part of 'current_bookings_tab_container_bloc.dart';

/// Represents the state of CurrentBookingsTabContainer in the application.
class CurrentBookingsTabContainerState extends Equatable {
  CurrentBookingsTabContainerState({this.currentBookingsTabContainerModelObj});

  CurrentBookingsTabContainerModel? currentBookingsTabContainerModelObj;

  @override
  List<Object?> get props => [
        currentBookingsTabContainerModelObj,
      ];
  CurrentBookingsTabContainerState copyWith(
      {CurrentBookingsTabContainerModel? currentBookingsTabContainerModelObj}) {
    return CurrentBookingsTabContainerState(
      currentBookingsTabContainerModelObj:
          currentBookingsTabContainerModelObj ??
              this.currentBookingsTabContainerModelObj,
    );
  }
}
