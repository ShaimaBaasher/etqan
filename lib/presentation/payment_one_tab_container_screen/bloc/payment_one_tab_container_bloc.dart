import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:etqan_client/presentation/payment_one_tab_container_screen/models/payment_one_tab_container_model.dart';
part 'payment_one_tab_container_event.dart';
part 'payment_one_tab_container_state.dart';

/// A bloc that manages the state of a PaymentOneTabContainer according to the event that is dispatched to it.
class PaymentOneTabContainerBloc
    extends Bloc<PaymentOneTabContainerEvent, PaymentOneTabContainerState> {
  PaymentOneTabContainerBloc(PaymentOneTabContainerState initialState)
      : super(initialState) {
    on<PaymentOneTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentOneTabContainerInitialEvent event,
    Emitter<PaymentOneTabContainerState> emit,
  ) async {}
}
