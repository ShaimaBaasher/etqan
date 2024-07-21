// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'framesixteen_item_model.dart';
import 'salesrep_item_model.dart';

/// This class defines the variables used in the [select_date_slots_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectDateSlotsModel extends Equatable {
  SelectDateSlotsModel({
    this.framesixteenItemList = const [],
    this.salesrepItemList = const [],
  }) {}

  List<FramesixteenItemModel> framesixteenItemList;

  List<SalesrepItemModel> salesrepItemList;

  SelectDateSlotsModel copyWith({
    List<FramesixteenItemModel>? framesixteenItemList,
    List<SalesrepItemModel>? salesrepItemList,
  }) {
    return SelectDateSlotsModel(
      framesixteenItemList: framesixteenItemList ?? this.framesixteenItemList,
      salesrepItemList: salesrepItemList ?? this.salesrepItemList,
    );
  }

  @override
  List<Object?> get props => [framesixteenItemList, salesrepItemList];
}
