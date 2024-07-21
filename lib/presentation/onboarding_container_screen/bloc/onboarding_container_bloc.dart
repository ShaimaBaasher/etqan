import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:etqan_client/presentation/onboarding_container_screen/models/onboarding_container_model.dart';
part 'onboarding_container_event.dart';
part 'onboarding_container_state.dart';

/// A bloc that manages the state of a OnboardingContainer according to the event that is dispatched to it.
class OnboardingContainerBloc
    extends Bloc<OnboardingContainerEvent, OnboardingContainerState> {
  OnboardingContainerBloc(OnboardingContainerState initialState)
      : super(initialState) {
    on<OnboardingContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingContainerInitialEvent event,
    Emitter<OnboardingContainerState> emit,
  ) async {}
}
