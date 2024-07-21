import 'bloc/payment_one_bloc.dart';
import 'models/payment_one_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/custom_elevated_button.dart';
import 'package:etqan_client/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class PaymentOnePage extends StatefulWidget {
  const PaymentOnePage({Key? key}) : super(key: key);

  @override
  PaymentOnePageState createState() => PaymentOnePageState();

  static Widget builder(BuildContext context) {
    // return BlocProvider<PaymentOneBloc>(
    //   create: (context) => PaymentOneBloc(
    //     PaymentOneState(
    //       paymentOneModelObj: PaymentOneModel(),
    //     ),
    //   )..add(
    //       PaymentOneInitialEvent(),
    //     ),
    //   child: PaymentOnePage(),
    // );

    return PaymentOnePage();
  }
}

class PaymentOnePageState extends State<PaymentOnePage>
    with AutomaticKeepAliveClientMixin<PaymentOnePage> {
  @override
  bool get wantKeepAlive => true;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<PaymentOneBloc, PaymentOneState>(
    //   builder: (context, state) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                children: [
                  SizedBox(
                    height: 28.v,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                      ),
                      child: Column(
                        children: [
                          _buildPaymentDetails(context),
                          SizedBox(height: 10.v),
                          _buildOrderSummary(context),
                          Spacer(),
                          _buildPaymentOptions(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    //   },
    // );
  }

  /// Section Widget
  Widget _buildPaymentDetails(BuildContext context) {
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
              decoration: AppDecoration.outlineBluegray1001.copyWith(
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
                            padding: EdgeInsets.only(top: 4.v, bottom: 2.v),
                            child: Text(
                              "lbl29".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgBoldDuotoneMoney,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            margin: EdgeInsets.only(
                              left: 4.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.v,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 1.h,
                    ),
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
                            left: 4.h,
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
                  SizedBox(
                    height: 24.v,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 4.v, bottom: 2.v),
                          child: Text(
                            "lbl31".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgBoldDuotoneMoneyGray600,
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          margin: EdgeInsets.only(
                            left: 1.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 9.v,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 1.h,
                    ),
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
                  SizedBox(
                    height: 6.v,
                  ),
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
              margin: EdgeInsets.only(
                right: 28.h,
              ),
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
  Widget _buildOrderSummary(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 23.v,
              width: 47.h,
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
          SizedBox(height: 8.v),
          Container(
            margin: EdgeInsets.only(left: 1.h),
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 9.v,
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
                  margin: EdgeInsets.symmetric(
                    vertical: 8.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl35".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Text("msg15".tr,
                          style: CustomTextStyles.bodyMediumGray500)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Container(
            margin: EdgeInsets.only(
              left: 1.h,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 2.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 5.v, bottom: 2.v),
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
                    left: 8.h,
                    top: 1.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPaymentOptions(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h, right: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomElevatedButton(
            width: 167.h,
            text: "lbl28".tr,
            margin: EdgeInsets.only(bottom: 1.v),
            onPressed: () {
              onTaptf(context);
            },
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
                SizedBox(
                  height: 1.v,
                ),
                Text(
                  "lbl_200".tr,
                  style: theme.textTheme.titleMedium,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the paymentScreen when the action is triggered.
  onTaptf(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentScreen,
    );
  }
}
