import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:etqan_client/presentation/suceess_screen/models/suceess_model.dart';
part 'suceess_event.dart';
part 'suceess_state.dart';

/// A bloc that manages the state of a Suceess according to the event that is dispatched to it.
class SuceessBloc extends Bloc<SuceessEvent, SuceessState> {
  SuceessBloc(SuceessState initialState) : super(initialState) {
    on<SuceessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SuceessInitialEvent event,
    Emitter<SuceessState> emit,
  ) async {
    emit(state.copyWith(
      hakimIslamController: TextEditingController(),
    ));
  }
}
