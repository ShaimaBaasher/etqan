// ignore_for_file: must_be_immutable

part of 'iphone_14_15_pro_two_bloc.dart';

/// Represents the state of Iphone1415ProTwo in the application.
class Iphone1415ProTwoState extends Equatable {
  Iphone1415ProTwoState({this.iphone1415ProTwoModelObj});

  Iphone1415ProTwoModel? iphone1415ProTwoModelObj;

  @override
  List<Object?> get props => [
        iphone1415ProTwoModelObj,
      ];
  Iphone1415ProTwoState copyWith(
      {Iphone1415ProTwoModel? iphone1415ProTwoModelObj}) {
    return Iphone1415ProTwoState(
      iphone1415ProTwoModelObj:
          iphone1415ProTwoModelObj ?? this.iphone1415ProTwoModelObj,
    );
  }
}
