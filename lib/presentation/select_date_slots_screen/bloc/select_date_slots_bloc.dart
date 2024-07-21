import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/framesixteen_item_model.dart';
import '../models/salesrep_item_model.dart';
import 'package:etqan_client/presentation/select_date_slots_screen/models/select_date_slots_model.dart';
part 'select_date_slots_event.dart';
part 'select_date_slots_state.dart';

/// A bloc that manages the state of a SelectDateSlots according to the event that is dispatched to it.
class SelectDateSlotsBloc
    extends Bloc<SelectDateSlotsEvent, SelectDateSlotsState> {
  SelectDateSlotsBloc(SelectDateSlotsState initialState) : super(initialState) {
    on<SelectDateSlotsInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SelectDateSlotsState> emit,
  ) {
    List<FramesixteenItemModel> newList = List<FramesixteenItemModel>.from(
        state.selectDateSlotsModelObj!.framesixteenItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        selectDateSlotsModelObj: state.selectDateSlotsModelObj
            ?.copyWith(framesixteenItemList: newList)));
  }

  List<FramesixteenItemModel> fillFramesixteenItemList() {
    return List.generate(3, (index) => FramesixteenItemModel());
  }

  List<SalesrepItemModel> fillSalesrepItemList() {
    return List.generate(4, (index) => SalesrepItemModel());
  }

  _onInitialize(
    SelectDateSlotsInitialEvent event,
    Emitter<SelectDateSlotsState> emit,
  ) async {
    emit(state.copyWith(rangeSelectionMode: RangeSelectionMode.toggledOn));
    emit(state.copyWith(
        selectDateSlotsModelObj: state.selectDateSlotsModelObj?.copyWith(
            framesixteenItemList: fillFramesixteenItemList(),
            salesrepItemList: fillSalesrepItemList())));
  }
}
