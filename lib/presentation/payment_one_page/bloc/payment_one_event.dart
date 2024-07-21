// ignore_for_file: must_be_immutable

part of 'payment_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentOneEvent extends Equatable {}

/// Event that is dispatched when the PaymentOne widget is first created.
class PaymentOneInitialEvent extends PaymentOneEvent {
  @override
  List<Object?> get props => [];
}
