// ignore_for_file: must_be_immutable

part of 'onboarding_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingContainerEvent extends Equatable {}

/// Event that is dispatched when the OnboardingContainer widget is first created.
class OnboardingContainerInitialEvent extends OnboardingContainerEvent {
  @override
  List<Object?> get props => [];
}
