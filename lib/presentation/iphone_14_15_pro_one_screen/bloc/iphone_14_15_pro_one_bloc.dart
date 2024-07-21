import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:etqan_client/presentation/iphone_14_15_pro_one_screen/models/iphone_14_15_pro_one_model.dart';
part 'iphone_14_15_pro_one_event.dart';
part 'iphone_14_15_pro_one_state.dart';

/// A bloc that manages the state of a Iphone1415ProOne according to the event that is dispatched to it.
class Iphone1415ProOneBloc
    extends Bloc<Iphone1415ProOneEvent, Iphone1415ProOneState> {
  Iphone1415ProOneBloc(Iphone1415ProOneState initialState)
      : super(initialState) {
    on<Iphone1415ProOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProOneInitialEvent event,
    Emitter<Iphone1415ProOneState> emit,
  ) async {}
}
