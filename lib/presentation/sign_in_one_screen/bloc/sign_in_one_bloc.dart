import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:etqan_client/presentation/sign_in_one_screen/models/sign_in_one_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'sign_in_one_event.dart';
part 'sign_in_one_state.dart';

/// A bloc that manages the state of a SignInOne according to the event that is dispatched to it.
class SignInOneBloc extends Bloc<SignInOneEvent, SignInOneState>
    with CodeAutoFill {
  SignInOneBloc(SignInOneState initialState) : super(initialState) {
    on<SignInOneInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<SignInOneState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    SignInOneInitialEvent event,
    Emitter<SignInOneState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
