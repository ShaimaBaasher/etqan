import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:etqan_client/presentation/sign_in_two_screen/models/sign_in_two_model.dart';
part 'sign_in_two_event.dart';
part 'sign_in_two_state.dart';

/// A bloc that manages the state of a SignInTwo according to the event that is dispatched to it.
class SignInTwoBloc extends Bloc<SignInTwoEvent, SignInTwoState> {
  SignInTwoBloc(SignInTwoState initialState) : super(initialState) {
    on<SignInTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignInTwoInitialEvent event,
    Emitter<SignInTwoState> emit,
  ) async {}
}
