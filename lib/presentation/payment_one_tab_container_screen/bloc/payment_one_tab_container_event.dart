// ignore_for_file: must_be_immutable

part of 'payment_one_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentOneTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentOneTabContainerEvent extends Equatable {}

/// Event that is dispatched when the PaymentOneTabContainer widget is first created.
class PaymentOneTabContainerInitialEvent extends PaymentOneTabContainerEvent {
  @override
  List<Object?> get props => [];
}
