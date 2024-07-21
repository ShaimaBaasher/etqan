import '../models/framesixteen_item_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FramesixteenItemWidget extends StatelessWidget {
  FramesixteenItemWidget(
    this.framesixteenItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  FramesixteenItemModel framesixteenItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 6.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        framesixteenItemModelObj.widget!,
        style: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 15.fSize,
          fontFamily: 'IBM Plex Sans Arabic',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: (framesixteenItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray300,
      selectedColor: appTheme.gray300,
      shape: (framesixteenItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray900.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                6.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                6.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
