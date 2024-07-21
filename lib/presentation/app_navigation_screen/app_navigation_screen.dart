import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Start".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.startScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign in".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign in Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signInThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign in One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signInOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Sign in Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signInTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding  One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Notifications".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Suceess  One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.suceessOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Payment".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.paymentScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Payment One - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.paymentOneTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Select Date Slots".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.selectDateSlotsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Service Details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.serviceDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Suceess ".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.suceessScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Current Bookings - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.currentBookingsTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro - Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro - Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro - One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "More".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.moreScreen),
                            ),
                          ],
                        ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
