import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:etqan_client/presentation/payment_one_page/models/payment_one_model.dart';
part 'payment_one_event.dart';
part 'payment_one_state.dart';

/// A bloc that manages the state of a PaymentOne according to the event that is dispatched to it.
class PaymentOneBloc extends Bloc<PaymentOneEvent, PaymentOneState> {
  PaymentOneBloc(PaymentOneState initialState) : super(initialState) {
    on<PaymentOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentOneInitialEvent event,
    Emitter<PaymentOneState> emit,
  ) async {}
}
