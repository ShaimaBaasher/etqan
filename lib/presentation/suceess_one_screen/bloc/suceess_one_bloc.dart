import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:etqan_client/presentation/suceess_one_screen/models/suceess_one_model.dart';
part 'suceess_one_event.dart';
part 'suceess_one_state.dart';

/// A bloc that manages the state of a SuceessOne according to the event that is dispatched to it.
class SuceessOneBloc extends Bloc<SuceessOneEvent, SuceessOneState> {
  SuceessOneBloc(SuceessOneState initialState) : super(initialState) {
    on<SuceessOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SuceessOneInitialEvent event,
    Emitter<SuceessOneState> emit,
  ) async {
    emit(state.copyWith(
      hakimIslamController: TextEditingController(),
    ));
  }
}
