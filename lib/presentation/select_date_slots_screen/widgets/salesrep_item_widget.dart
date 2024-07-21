import '../models/salesrep_item_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SalesrepItemWidget extends StatelessWidget {
  SalesrepItemWidget(
    this.salesrepItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SalesrepItemModel salesrepItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBluegray1002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 98.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMan1,
            height: 49.adaptSize,
            width: 49.adaptSize,
          ),
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.centerRight,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl46".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: "lbl47".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
