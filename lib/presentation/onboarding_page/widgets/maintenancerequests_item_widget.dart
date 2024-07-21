import '../models/maintenancerequests_item_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MaintenancerequestsItemWidget extends StatelessWidget {
  MaintenancerequestsItemWidget(
    this.maintenancerequestsItemModelObj, {
    Key? key,
    this.onTapMaintenanceRequests,
  }) : super(
          key: key,
        );

  MaintenancerequestsItemModel maintenancerequestsItemModelObj;

  VoidCallback? onTapMaintenanceRequests;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMaintenanceRequests!.call();
      },
      child: Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.outlineBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 6.v),
            CustomImageView(
              imagePath: maintenancerequestsItemModelObj?.maintenanceImage,
              height: 41.adaptSize,
              width: 41.adaptSize,
            ),
            SizedBox(height: 17.v),
            Text(
              maintenancerequestsItemModelObj.maintenanceText!,
              style: theme.textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
