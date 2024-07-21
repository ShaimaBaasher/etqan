import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:etqan_client/presentation/current_bookings_tab_container_screen/models/current_bookings_tab_container_model.dart';
part 'current_bookings_tab_container_event.dart';
part 'current_bookings_tab_container_state.dart';

/// A bloc that manages the state of a CurrentBookingsTabContainer according to the event that is dispatched to it.
class CurrentBookingsTabContainerBloc extends Bloc<
    CurrentBookingsTabContainerEvent, CurrentBookingsTabContainerState> {
  CurrentBookingsTabContainerBloc(CurrentBookingsTabContainerState initialState)
      : super(initialState) {
    on<CurrentBookingsTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CurrentBookingsTabContainerInitialEvent event,
    Emitter<CurrentBookingsTabContainerState> emit,
  ) async {}
}
