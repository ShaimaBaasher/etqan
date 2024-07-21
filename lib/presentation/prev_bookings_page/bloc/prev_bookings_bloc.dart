import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:etqan_client/presentation/prev_bookings_page/models/prev_bookings_model.dart';
part 'prev_bookings_event.dart';
part 'prev_bookings_state.dart';

/// A bloc that manages the state of a PrevBookings according to the event that is dispatched to it.
class PrevBookingsBloc extends Bloc<PrevBookingsEvent, PrevBookingsState> {
  PrevBookingsBloc(PrevBookingsState initialState) : super(initialState) {
    on<PrevBookingsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PrevBookingsInitialEvent event,
    Emitter<PrevBookingsState> emit,
  ) async {}
}
