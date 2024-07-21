// ignore_for_file: must_be_immutable

part of 'payment_one_bloc.dart';

/// Represents the state of PaymentOne in the application.
class PaymentOneState extends Equatable {
  PaymentOneState({this.paymentOneModelObj});

  PaymentOneModel? paymentOneModelObj;

  @override
  List<Object?> get props => [
        paymentOneModelObj,
      ];
  PaymentOneState copyWith({PaymentOneModel? paymentOneModelObj}) {
    return PaymentOneState(
      paymentOneModelObj: paymentOneModelObj ?? this.paymentOneModelObj,
    );
  }
}
