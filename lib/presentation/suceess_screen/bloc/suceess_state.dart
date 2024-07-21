// ignore_for_file: must_be_immutable

part of 'suceess_bloc.dart';

/// Represents the state of Suceess in the application.
class SuceessState extends Equatable {
  SuceessState({
    this.hakimIslamController,
    this.suceessModelObj,
  });

  TextEditingController? hakimIslamController;

  SuceessModel? suceessModelObj;

  @override
  List<Object?> get props => [
        hakimIslamController,
        suceessModelObj,
      ];
  SuceessState copyWith({
    TextEditingController? hakimIslamController,
    SuceessModel? suceessModelObj,
  }) {
    return SuceessState(
      hakimIslamController: hakimIslamController ?? this.hakimIslamController,
      suceessModelObj: suceessModelObj ?? this.suceessModelObj,
    );
  }
}
