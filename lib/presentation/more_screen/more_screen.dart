import 'bloc/more_bloc.dart';
import 'models/more_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/presentation/onboarding_page/onboarding_page.dart';
import 'package:etqan_client/widgets/custom_bottom_bar.dart';
import 'package:etqan_client/widgets/custom_icon_button.dart';
import 'package:etqan_client/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MoreScreen extends StatelessWidget {
  MoreScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<MoreBloc>(
        create: (context) => MoreBloc(MoreState(moreModelObj: MoreModel()))
          ..add(MoreInitialEvent()),
        child: MoreScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoreBloc, MoreState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 19.h, vertical: 56.v),
                  child: Column(children: [
                    SizedBox(height: 14.v),
                    _buildEditData(context),
                    SizedBox(height: 35.v),
                    _buildArrowLeft1(context),
                    SizedBox(height: 26.v),
                    Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: _buildArrowLeft(context,
                            widgetText: "lbl64".tr,
                            boldDuotoneMapImage: ImageConstant
                                .imgBoldDuotoneMoneyOnprimary30x30)),
                    SizedBox(height: 13.v),
                    Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: _buildArrowLeft(context,
                            widgetText: "lbl66".tr,
                            boldDuotoneMapImage: ImageConstant
                                .imgBoldDuotoneMap, onTapArrowLeft: () {
                          onTapArrowLeft(context);
                        })),
                    SizedBox(height: 13.v),
                    Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: _buildArrowLeft(context,
                            widgetText: "lbl73".tr,
                            boldDuotoneMapImage:
                                ImageConstant.imgBoldDuotoneCall)),
                    SizedBox(height: 13.v),
                    Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: _buildArrowLeft(context,
                            widgetText: "lbl68".tr,
                            boldDuotoneMapImage: ImageConstant
                                .imgBoldDuotoneEssentionalOnprimary,
                            onTapArrowLeft: () {
                          onTapArrowLeft1(context);
                        })),
                    SizedBox(height: 13.v),
                    Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: _buildArrowLeft(context,
                            widgetText: "lbl74".tr,
                            boldDuotoneMapImage: ImageConstant
                                .imgBoldDuotoneEssentionalOnprimary30x30)),
                    SizedBox(height: 13.v),
                    _buildBoldDuotoneArrows(context),
                    SizedBox(height: 38.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomIconButton(
                          height: 38.adaptSize,
                          width: 38.adaptSize,
                          padding: EdgeInsets.all(5.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgAirplane)),
                      Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: CustomIconButton(
                              height: 38.adaptSize,
                              width: 38.adaptSize,
                              padding: EdgeInsets.all(5.h),
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgCloseBlueGray900))),
                      Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: CustomIconButton(
                              height: 38.adaptSize,
                              width: 38.adaptSize,
                              padding: EdgeInsets.all(5.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgFacebook))),
                      Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: CustomIconButton(
                              height: 38.adaptSize,
                              width: 38.adaptSize,
                              padding: EdgeInsets.all(5.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgInfo)))
                    ])
                  ])),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildEditData(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h, right: 19.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomOutlinedButton(
              height: 34.v,
              width: 124.h,
              text: "lbl69".tr,
              margin: EdgeInsets.symmetric(vertical: 5.v),
              rightIcon: Container(
                  margin: EdgeInsets.only(left: 7.h),
                  child: CustomImageView(
                      imagePath:
                          ImageConstant.imgBoldDuotoneMessagesCoversationPen2,
                      height: 30.adaptSize,
                      width: 30.adaptSize)),
              buttonStyle: CustomButtonStyles.outlineBlueGray,
              buttonTextStyle: CustomTextStyles.labelLarge12),
          Column(children: [
            Align(
                alignment: Alignment.centerRight,
                child: Text("lbl70".tr, style: theme.textTheme.bodyLarge)),
            Text("msg_966_5553_080_45".tr,
                style: CustomTextStyles.bodySmallBluegray900)
          ])
        ]));
  }

  /// Section Widget
  Widget _buildArrowLeft1(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h, right: 3.h),
        decoration: AppDecoration.fillPrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 19.v),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 4.h, top: 6.v),
                        child: Text("lbl_150_0".tr,
                            style: CustomTextStyles.titleSmallWhiteA700)),
                    Spacer(),
                    Padding(
                        padding: EdgeInsets.only(top: 4.v, bottom: 2.v),
                        child: Text("lbl71".tr,
                            style: CustomTextStyles.titleSmallWhiteA700)),
                    Container(
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        margin: EdgeInsets.only(left: 7.h),
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath:
                                  ImageConstant.imgBoldDuotoneMoneyWhiteA700,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              alignment: Alignment.center),
                          CustomImageView(
                              imagePath: ImageConstant
                                  .imgBoldDuotoneMoneyWhiteA70030x30,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              alignment: Alignment.center)
                        ]))
                  ])),
          SizedBox(height: 8.v),
          Padding(
              padding: EdgeInsets.only(left: 20.h, right: 12.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgArrowLeft,
                    height: 15.v,
                    width: 7.h,
                    margin: EdgeInsets.only(top: 8.v, bottom: 7.v)),
                Spacer(),
                Padding(
                    padding: EdgeInsets.only(top: 7.v, bottom: 5.v),
                    child:
                        Text("lbl72".tr, style: CustomTextStyles.labelLarge12)),
                CustomImageView(
                    imagePath: ImageConstant.imgBoldDuotoneMoneyOnprimary,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    margin: EdgeInsets.only(left: 7.h))
              ])),
          SizedBox(height: 11.v)
        ]));
  }

  /// Section Widget
  Widget _buildBoldDuotoneArrows(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapBoldDuotoneArrows(context);
        },
        child: Container(
            margin: EdgeInsets.only(right: 5.h),
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 9.v),
            decoration: AppDecoration.fillRed
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgBoldDuotoneArrows,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      radius: BorderRadius.circular(5.h)),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 4.v, right: 5.h, bottom: 2.v),
                      child: Text("lbl75".tr,
                          style: CustomTextStyles.titleSmallRed400))
                ])));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildArrowLeft(
    BuildContext context, {
    required String widgetText,
    required String boldDuotoneMapImage,
    Function? onTapArrowLeft,
  }) {
    return GestureDetector(
        onTap: () {
          onTapArrowLeft!.call();
        },
        child: Container(
            padding: EdgeInsets.all(7.h),
            decoration: AppDecoration.outlineGray300
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 15.v,
                      width: 7.h,
                      margin:
                          EdgeInsets.only(left: 11.h, top: 8.v, bottom: 9.v)),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(top: 6.v, bottom: 2.v),
                      child: Text(widgetText,
                          style: theme.textTheme.titleSmall!
                              .copyWith(color: appTheme.blueGray900))),
                  CustomImageView(
                      imagePath: boldDuotoneMapImage,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      margin: EdgeInsets.only(left: 10.h, top: 2.v))
                ])));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.tf:
        return AppRoutes.onboardingPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.onboardingPage:
        return OnboardingPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the iphone1415ProTwoScreen when the action is triggered.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProTwoScreen,
    );
  }

  /// Navigates to the iphone1415ProOneScreen when the action is triggered.
  onTapArrowLeft1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProOneScreen,
    );
  }

  /// Navigates to the signInTwoScreen when the action is triggered.
  onTapBoldDuotoneArrows(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInTwoScreen,
    );
  }
}
