import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:etqan_client/presentation/sign_in_three_screen/models/sign_in_three_model.dart';
part 'sign_in_three_event.dart';
part 'sign_in_three_state.dart';

/// A bloc that manages the state of a SignInThree according to the event that is dispatched to it.
class SignInThreeBloc extends Bloc<SignInThreeEvent, SignInThreeState> {
  SignInThreeBloc(SignInThreeState initialState) : super(initialState) {
    on<SignInThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignInThreeInitialEvent event,
    Emitter<SignInThreeState> emit,
  ) async {}
}
