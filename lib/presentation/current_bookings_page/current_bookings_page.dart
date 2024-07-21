import 'bloc/current_bookings_bloc.dart';
import 'models/current_bookings_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CurrentBookingsPage extends StatefulWidget {
  const CurrentBookingsPage({Key? key}) : super(key: key);

  @override
  CurrentBookingsPageState createState() => CurrentBookingsPageState();

  static Widget builder(BuildContext context) {
    // return BlocProvider<CurrentBookingsBloc>(
    //   create: (context) => CurrentBookingsBloc(
    //     CurrentBookingsState(
    //       currentBookingsModelObj: CurrentBookingsModel(),
    //     ),
    //   )..add(
    //       CurrentBookingsInitialEvent(),
    //     ),
      // child: CurrentBookingsPage(),
    // );

    return CurrentBookingsPage();
  }
}

class CurrentBookingsPageState extends State<CurrentBookingsPage>
    with AutomaticKeepAliveClientMixin<CurrentBookingsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<CurrentBookingsBloc, CurrentBookingsState>(
    //   builder: (context, state) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 43.v),
              _buildClockSection(context),
            ],
          ),
        ),
      ),
    );
    //   },
    // );
  }

  /// Section Widget
  Widget _buildClockSection(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapClockSection(context);
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 18.h,
        ),
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineBluegray1003.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 13.v,
                bottom: 17.v,
              ),
              child: CustomIconButton(
                height: 53.adaptSize,
                width: 53.adaptSize,
                padding: EdgeInsets.all(8.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCloseBlueGray100,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 136.h,
                bottom: 8.v,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 46.v,
                    width: 134.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "lbl_15_12_2023".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 45.v,
                            width: 134.h,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 24.h),
                                    child: Text(
                                      "lbl63".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    "lbl19".tr,
                                    style:
                                        CustomTextStyles.titleMediumOnPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 23.v,
                      width: 77.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 23.v,
                              width: 77.h,
                              decoration: BoxDecoration(
                                color: appTheme.indigo800,
                                borderRadius: BorderRadius.circular(4.h),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "lbl20".tr,
                              style: CustomTextStyles.titleSmallWhiteA700,
                            ),
                          ),
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
  }

  /// Navigates to the suceessScreen when the action is triggered.
  onTapClockSection(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.suceessScreen,
    );
  }
}
