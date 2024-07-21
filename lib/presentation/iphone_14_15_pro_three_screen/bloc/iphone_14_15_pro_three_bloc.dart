import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:etqan_client/presentation/iphone_14_15_pro_three_screen/models/iphone_14_15_pro_three_model.dart';
part 'iphone_14_15_pro_three_event.dart';
part 'iphone_14_15_pro_three_state.dart';

/// A bloc that manages the state of a Iphone1415ProThree according to the event that is dispatched to it.
class Iphone1415ProThreeBloc
    extends Bloc<Iphone1415ProThreeEvent, Iphone1415ProThreeState> {
  Iphone1415ProThreeBloc(Iphone1415ProThreeState initialState)
      : super(initialState) {
    on<Iphone1415ProThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProThreeInitialEvent event,
    Emitter<Iphone1415ProThreeState> emit,
  ) async {}
}
