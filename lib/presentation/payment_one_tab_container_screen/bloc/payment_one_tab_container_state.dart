// ignore_for_file: must_be_immutable

part of 'payment_one_tab_container_bloc.dart';

/// Represents the state of PaymentOneTabContainer in the application.
class PaymentOneTabContainerState extends Equatable {
  PaymentOneTabContainerState({this.paymentOneTabContainerModelObj});

  PaymentOneTabContainerModel? paymentOneTabContainerModelObj;

  @override
  List<Object?> get props => [
        paymentOneTabContainerModelObj,
      ];
  PaymentOneTabContainerState copyWith(
      {PaymentOneTabContainerModel? paymentOneTabContainerModelObj}) {
    return PaymentOneTabContainerState(
      paymentOneTabContainerModelObj:
          paymentOneTabContainerModelObj ?? this.paymentOneTabContainerModelObj,
    );
  }
}
