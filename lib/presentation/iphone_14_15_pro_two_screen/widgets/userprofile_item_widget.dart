import '../models/userprofile_item_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomOutlinedButton(
            width: 47.h,
            text: "lbl34".tr,
            margin: EdgeInsets.only(
              left: 2.h,
              top: 9.v,
              bottom: 9.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    userprofileItemModelObj.homeText!,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Text(
                  userprofileItemModelObj.addressText!,
                  style: CustomTextStyles.bodyMediumGray500,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
