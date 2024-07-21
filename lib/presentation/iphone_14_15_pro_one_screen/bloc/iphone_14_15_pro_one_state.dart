// ignore_for_file: must_be_immutable

part of 'iphone_14_15_pro_one_bloc.dart';

/// Represents the state of Iphone1415ProOne in the application.
class Iphone1415ProOneState extends Equatable {
  Iphone1415ProOneState({this.iphone1415ProOneModelObj});

  Iphone1415ProOneModel? iphone1415ProOneModelObj;

  @override
  List<Object?> get props => [
        iphone1415ProOneModelObj,
      ];
  Iphone1415ProOneState copyWith(
      {Iphone1415ProOneModel? iphone1415ProOneModelObj}) {
    return Iphone1415ProOneState(
      iphone1415ProOneModelObj:
          iphone1415ProOneModelObj ?? this.iphone1415ProOneModelObj,
    );
  }
}
