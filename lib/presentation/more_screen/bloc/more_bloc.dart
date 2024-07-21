import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:etqan_client/presentation/more_screen/models/more_model.dart';
part 'more_event.dart';
part 'more_state.dart';

/// A bloc that manages the state of a More according to the event that is dispatched to it.
class MoreBloc extends Bloc<MoreEvent, MoreState> {
  MoreBloc(MoreState initialState) : super(initialState) {
    on<MoreInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MoreInitialEvent event,
    Emitter<MoreState> emit,
  ) async {}
}
