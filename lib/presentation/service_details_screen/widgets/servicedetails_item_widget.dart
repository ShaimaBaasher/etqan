import '../models/servicedetails_item_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ServicedetailsItemWidget extends StatefulWidget {
  ServicedetailsItemWidget(
    this.servicedetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ServicedetailsItemModel servicedetailsItemModelObj;

  @override
  State<ServicedetailsItemWidget> createState() =>
      _ServicedetailsItemWidgetState();
}

class _ServicedetailsItemWidgetState extends State<ServicedetailsItemWidget> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: this.value,
            checkColor: appTheme.gray300,
            fillColor: MaterialStateColor.resolveWith(
              (states) => appTheme.black900,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.adaptSize),
            ),
            onChanged: (value) {
              setState(() {
                this.value = value!;
              });
            },
          ),
        ),
        Container(
          height: 40.v,
          width: 175.h,
          margin: EdgeInsets.only(top: 3.v),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  widget.servicedetailsItemModelObj.brief!,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBoldDuotoneEssentional,
                      height: 19.adaptSize,
                      width: 19.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        widget.servicedetailsItemModelObj.hoverText!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 13.v,
            bottom: 9.v,
          ),
          child: Text(
            widget.servicedetailsItemModelObj.price!,
            style: CustomTextStyles.titleSmallPrimary,
          ),
        ),
      ],
    );
  }
}
