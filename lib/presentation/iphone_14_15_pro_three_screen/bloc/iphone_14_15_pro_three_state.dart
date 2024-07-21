// ignore_for_file: must_be_immutable

part of 'iphone_14_15_pro_three_bloc.dart';

/// Represents the state of Iphone1415ProThree in the application.
class Iphone1415ProThreeState extends Equatable {
  Iphone1415ProThreeState({this.iphone1415ProThreeModelObj});

  Iphone1415ProThreeModel? iphone1415ProThreeModelObj;

  @override
  List<Object?> get props => [
        iphone1415ProThreeModelObj,
      ];
  Iphone1415ProThreeState copyWith(
      {Iphone1415ProThreeModel? iphone1415ProThreeModelObj}) {
    return Iphone1415ProThreeState(
      iphone1415ProThreeModelObj:
          iphone1415ProThreeModelObj ?? this.iphone1415ProThreeModelObj,
    );
  }
}
