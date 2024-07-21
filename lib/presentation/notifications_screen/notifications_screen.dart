import 'bloc/notifications_bloc.dart';
import 'models/notifications_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/app_bar/appbar_subtitle.dart';
import 'package:etqan_client/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:etqan_client/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationsBloc>(
        create: (context) => NotificationsBloc(
            NotificationsState(notificationsModelObj: NotificationsModel()))
          ..add(NotificationsInitialEvent()),
        child: NotificationsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationsBloc, NotificationsState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 42.v),
                  child: Column(children: [
                    Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: _buildWidget1(context,
                            titleText: "lbl16".tr, bodyText: "msg12".tr)),
                    SizedBox(height: 11.v),
                    Padding(
                        padding: EdgeInsets.only(right: 3.h),
                        child: _buildWidget1(context,
                            titleText: "lbl16".tr, bodyText: "msg12".tr)),
                    SizedBox(height: 11.v),
                    Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: _buildWidget1(context,
                            titleText: "lbl16".tr, bodyText: "msg12".tr)),
                    SizedBox(height: 11.v),
                    _buildWidget4(context),
                    SizedBox(height: 11.v),
                    Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: _buildWidget1(context,
                            titleText: "lbl16".tr, bodyText: "msg12".tr)),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl15".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgCloseBlueGray100,
              margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.v),
              onTap: () {
                onTapClose(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildWidget4(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 5.v),
        decoration: AppDecoration.outlineBluegray10001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGroup268361,
                  height: 181.v,
                  width: 343.h,
                  radius: BorderRadius.circular(8.h)),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(right: 12.h),
                  child: Text("lbl16".tr, style: theme.textTheme.titleSmall)),
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(right: 12.h),
                  child:
                      Text("msg12".tr, style: CustomTextStyles.bodyMediumLight))
            ]));
  }

  /// Common widget
  Widget _buildWidget1(
    BuildContext context, {
    required String titleText,
    required String bodyText,
  }) {
    return Container(
        width: 357.h,
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 7.v),
        decoration: AppDecoration.outlineBluegray10001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text(titleText,
                  style: theme.textTheme.titleSmall!
                      .copyWith(color: appTheme.blueGray900)),
              Text(bodyText,
                  style: CustomTextStyles.bodyMediumLight
                      .copyWith(color: appTheme.blueGray900))
            ]));
  }

  /// Navigates to the onboardingContainerScreen when the action is triggered.
  onTapClose(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingContainerScreen,
    );
  }
}
