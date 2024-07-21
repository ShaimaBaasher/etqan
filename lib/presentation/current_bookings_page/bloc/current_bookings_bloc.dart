import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:etqan_client/presentation/current_bookings_page/models/current_bookings_model.dart';
part 'current_bookings_event.dart';
part 'current_bookings_state.dart';

/// A bloc that manages the state of a CurrentBookings according to the event that is dispatched to it.
class CurrentBookingsBloc
    extends Bloc<CurrentBookingsEvent, CurrentBookingsState> {
  CurrentBookingsBloc(CurrentBookingsState initialState) : super(initialState) {
    on<CurrentBookingsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CurrentBookingsInitialEvent event,
    Emitter<CurrentBookingsState> emit,
  ) async {}
}
