// ignore_for_file: must_be_immutable

part of 'select_date_slots_bloc.dart';

/// Represents the state of SelectDateSlots in the application.
class SelectDateSlotsState extends Equatable {
  SelectDateSlotsState({
    this.rangeStart,
    this.rangeEnd,
    this.selectedDay,
    this.focusedDay,
    this.rangeSelectionMode = RangeSelectionMode.toggledOn,
    this.selectDateSlotsModelObj,
  });

  SelectDateSlotsModel? selectDateSlotsModelObj;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime? focusedDay;

  RangeSelectionMode rangeSelectionMode;

  @override
  List<Object?> get props => [
        rangeStart,
        rangeEnd,
        selectedDay,
        focusedDay,
        rangeSelectionMode,
        selectDateSlotsModelObj,
      ];
  SelectDateSlotsState copyWith({
    DateTime? rangeStart,
    DateTime? rangeEnd,
    DateTime? selectedDay,
    DateTime? focusedDay,
    RangeSelectionMode? rangeSelectionMode,
    SelectDateSlotsModel? selectDateSlotsModelObj,
  }) {
    return SelectDateSlotsState(
      rangeStart: rangeStart ?? this.rangeStart,
      rangeEnd: rangeEnd ?? this.rangeEnd,
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDay: focusedDay ?? this.focusedDay,
      rangeSelectionMode: rangeSelectionMode ?? this.rangeSelectionMode,
      selectDateSlotsModelObj:
          selectDateSlotsModelObj ?? this.selectDateSlotsModelObj,
    );
  }
}
