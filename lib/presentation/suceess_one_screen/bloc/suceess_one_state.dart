// ignore_for_file: must_be_immutable

part of 'suceess_one_bloc.dart';

/// Represents the state of SuceessOne in the application.
class SuceessOneState extends Equatable {
  SuceessOneState({
    this.hakimIslamController,
    this.suceessOneModelObj,
  });

  TextEditingController? hakimIslamController;

  SuceessOneModel? suceessOneModelObj;

  @override
  List<Object?> get props => [
        hakimIslamController,
        suceessOneModelObj,
      ];
  SuceessOneState copyWith({
    TextEditingController? hakimIslamController,
    SuceessOneModel? suceessOneModelObj,
  }) {
    return SuceessOneState(
      hakimIslamController: hakimIslamController ?? this.hakimIslamController,
      suceessOneModelObj: suceessOneModelObj ?? this.suceessOneModelObj,
    );
  }
}
