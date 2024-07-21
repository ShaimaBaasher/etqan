// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [framesixteen_item_widget] screen.
class FramesixteenItemModel extends Equatable {
  FramesixteenItemModel({
    this.widget,
    this.isSelected,
  }) {
    widget = widget ?? "مساءً";
    isSelected = isSelected ?? false;
  }

  String? widget;

  bool? isSelected;

  FramesixteenItemModel copyWith({
    String? widget,
    bool? isSelected,
  }) {
    return FramesixteenItemModel(
      widget: widget ?? this.widget,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [widget, isSelected];
}
