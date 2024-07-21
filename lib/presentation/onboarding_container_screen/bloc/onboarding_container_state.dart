// ignore_for_file: must_be_immutable

part of 'onboarding_container_bloc.dart';

/// Represents the state of OnboardingContainer in the application.
class OnboardingContainerState extends Equatable {
  OnboardingContainerState({this.onboardingContainerModelObj});

  OnboardingContainerModel? onboardingContainerModelObj;

  @override
  List<Object?> get props => [
        onboardingContainerModelObj,
      ];
  OnboardingContainerState copyWith(
      {OnboardingContainerModel? onboardingContainerModelObj}) {
    return OnboardingContainerState(
      onboardingContainerModelObj:
          onboardingContainerModelObj ?? this.onboardingContainerModelObj,
    );
  }
}
