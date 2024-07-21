import 'bloc/payment_bloc.dart';
import 'models/payment_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentBloc>(
      create: (context) => PaymentBloc(
        PaymentState(
          paymentModelObj: PaymentModel(),
        ),
      )..add(
          PaymentInitialEvent(),
        ),
      child: PaymentScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 16.v,
                                    bottom: 13.v,
                                  ),
                                  child: Text(
                                    "lbl28".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgClose,
                                  height: 53.adaptSize,
                                  width: 53.adaptSize,
                                  margin: EdgeInsets.only(left: 118.h),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12.v),
                          _buildSpacerRow(context),
                          SizedBox(height: 28.v),
                          _buildThirtyNineStack(context),
                          SizedBox(height: 18.v),
                          _buildFortyOneStack(context),
                          SizedBox(height: 74.v),
                          _buildInput1Row(context),
                          SizedBox(height: 32.v),
                          _buildPaymentRow(context),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 105.h,
                        vertical: 355.v,
                      ),
                      decoration: AppDecoration.fillBlackE,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 12.v),
                          CustomImageView(
                            imagePath: ImageConstant.cleaningAnimation,
                            height: 90.adaptSize,
                            width: 90.adaptSize,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 15.v),
                          Text(
                            "msg16".tr,
                            style: CustomTextStyles.titleSmallWhiteA700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSpacerRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 17.v,
            ),
            child: Text(
              "lbl21".tr,
              style: CustomTextStyles.titleSmallWhiteA700,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBoldDuotoneTime,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.only(
              left: 3.h,
              top: 12.v,
              bottom: 12.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: SizedBox(
              height: 54.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              top: 17.v,
              bottom: 16.v,
            ),
            child: Text(
              "lbl_2_2024".tr,
              style: CustomTextStyles.labelLargeWhiteA700,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 17.v,
              bottom: 16.v,
            ),
            child: Text(
              "lbl22".tr,
              style: CustomTextStyles.labelLargeWhiteA700,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCalendar,
            height: 30.adaptSize,
            width: 30.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
            margin: EdgeInsets.only(
              left: 6.h,
              top: 11.v,
              bottom: 13.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtySixColumn(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 4.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "lbl31".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgBoldDuotoneMoneyGray600,
                height: 30.adaptSize,
                width: 30.adaptSize,
                margin: EdgeInsets.only(left: 1.h),
              ),
            ],
          ),
        ),
        SizedBox(height: 9.v),
        Container(
          padding: EdgeInsets.all(10.h),
          decoration: AppDecoration.outlineBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 47.h,
                margin: EdgeInsets.only(
                  left: 7.h,
                  top: 7.v,
                  bottom: 7.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 9.h,
                  vertical: 2.v,
                ),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Text(
                  "lbl32".tr,
                  style: CustomTextStyles.bodyMediumBluegray90001,
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    "msg_mastercard".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "msg_expires_in_08_2030".tr,
                      style: CustomTextStyles.bodyMediumGray500,
                    ),
                  ),
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage5,
                height: 22.v,
                width: 36.h,
                margin: EdgeInsets.only(
                  left: 16.h,
                  top: 9.v,
                  bottom: 9.v,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildThirtyNineStack(BuildContext context) {
    return SizedBox(
      height: 300.v,
      width: 372.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.outlineBluegray100.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder11,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 4.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "lbl29".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgBoldDuotoneMoney,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            margin: EdgeInsets.only(left: 4.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Container(
                    margin: EdgeInsets.only(right: 1.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.outlineBluegray10001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            top: 4.v,
                          ),
                          child: Text(
                            "lbl_150".tr,
                            style: CustomTextStyles.titleMedium18,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 4.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl30".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.v),
                  _buildThirtySixColumn(context),
                  SizedBox(height: 6.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "msg14".tr,
                      style: CustomTextStyles.titleSmallPrimarySemiBold_1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 23.v,
              width: 94.h,
              margin: EdgeInsets.only(right: 28.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 20.v,
                      width: 94.h,
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "lbl33".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyOneStack(BuildContext context) {
    return SizedBox(
      height: 111.v,
      width: 372.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.outlineBluegray100.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder11,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 5.v),
                  Container(
                    margin: EdgeInsets.only(right: 1.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.outlineBluegray10001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 47.h,
                          margin: EdgeInsets.only(
                            left: 2.h,
                            top: 9.v,
                            bottom: 9.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.outlineGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Text(
                            "lbl34".tr,
                            style: CustomTextStyles.bodyMediumBluegray90001,
                          ),
                        ),
                        Container(
                          height: 41.v,
                          width: 159.h,
                          margin: EdgeInsets.only(top: 2.v),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  "lbl35".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "msg15".tr,
                                  style: CustomTextStyles.bodyMediumGray500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 23.v,
              width: 47.h,
              margin: EdgeInsets.only(right: 33.h),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 20.v,
                      width: 47.h,
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "lbl36".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInput1Row(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBluegray10001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 5.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl37".tr,
              style: CustomTextStyles.titleSmallPrimarySemiBold_1,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Text(
              "lbl38".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBoldDuotoneMoneyGray700,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.only(
              left: 5.h,
              top: 1.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 11.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomElevatedButton(
            width: 167.h,
            text: "lbl28".tr,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "lbl39".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 1.v),
                Text(
                  "lbl_200".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
