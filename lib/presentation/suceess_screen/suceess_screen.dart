import 'bloc/suceess_bloc.dart';
import 'dart:async';
import 'models/suceess_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/app_bar/appbar_title.dart';
import 'package:etqan_client/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:etqan_client/widgets/app_bar/custom_app_bar.dart';
import 'package:etqan_client/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SuceessScreen extends StatelessWidget {
  SuceessScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  static Widget builder(BuildContext context) {
    return BlocProvider<SuceessBloc>(
      create: (context) => SuceessBloc(SuceessState(
        suceessModelObj: SuceessModel(),
      ))
        ..add(SuceessInitialEvent()),
      child: SuceessScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSixteen(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 17.v,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup42,
                      height: 28.v,
                      width: 332.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 9.h),
                    ),
                    SizedBox(height: 4.v),
                    _buildWidget(context),
                    SizedBox(height: 22.v),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: BlocSelector<SuceessBloc, SuceessState,
                          TextEditingController?>(
                        selector: (state) => state.hakimIslamController,
                        builder: (context, hakimIslamController) {
                          return CustomTextFormField(
                            controller: hakimIslamController,
                            hintText: "lbl26".tr,
                            hintStyle: theme.textTheme.titleSmall!,
                            textInputAction: TextInputAction.done,
                            suffix: Container(
                              margin: EdgeInsets.fromLTRB(19.h, 8.v, 17.h, 9.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgMan1,
                                height: 49.adaptSize,
                                width: 49.adaptSize,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: 66.v,
                            ),
                            contentPadding: EdgeInsets.only(
                              left: 30.h,
                              top: 21.v,
                              bottom: 21.v,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 22.v),
                    _buildMap(context),
                    SizedBox(height: 14.v),
                    _buildLine1(context),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixteen(BuildContext context) {
    return SizedBox(
      height: 317.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 22.v),
              decoration: AppDecoration.gradientPrimaryToTeal,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomAppBar(
                    height: 53.v,
                    centerTitle: true,
                    title: AppbarTitle(
                      text: "lbl17".tr,
                    ),
                    actions: [
                      AppbarTrailingIconbuttonOne(
                        imagePath: ImageConstant.imgCloseWhiteA700,
                        margin: EdgeInsets.symmetric(horizontal: 10.h),
                      ),
                    ],
                  ),
                  SizedBox(height: 34.v),
                  Padding(
                    padding: EdgeInsets.only(right: 23.h),
                    child: Text(
                      "lbl18".tr,
                      style: CustomTextStyles.bodySmallWhiteA700,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 22.h),
                    child: Text(
                      "lbl19".tr,
                      style: CustomTextStyles.titleMediumWhiteA700,
                    ),
                  ),
                  SizedBox(height: 27.v),
                  Container(
                    height: 23.v,
                    width: 77.h,
                    margin: EdgeInsets.only(right: 23.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 23.v,
                            width: 77.h,
                            decoration: BoxDecoration(
                              color: appTheme.indigo800,
                              borderRadius: BorderRadius.circular(
                                4.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl20".tr,
                            style: CustomTextStyles.titleSmallWhiteA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle5633,
            height: 56.v,
            width: 157.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(bottom: 53.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle5634,
            height: 53.v,
            width: 161.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(bottom: 48.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRecording2023,
            height: 131.v,
            width: 167.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 25.h,
              bottom: 82.v,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 18.h,
                top: 263.v,
                right: 18.h,
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              decoration: AppDecoration.fillIndigo.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "lbl23".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Spacer(
            flex: 62,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "lbl24".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Spacer(
            flex: 37,
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl25".tr,
              style: CustomTextStyles.bodyMediumOnPrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
      height: 74.v,
      width: 357.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildLine(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 13.h,
          right: 10.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 5.h),
                child: Text(
                  "lbl27".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
            ),
            SizedBox(height: 18.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_200".tr,
                  style: theme.textTheme.bodySmall,
                ),
                Text(
                  "msg13".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLine1(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        height: 86.v,
        width: 357.h,
        padding: EdgeInsets.symmetric(vertical: 11.v),
        decoration: AppDecoration.outlineBluegray100.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 357.h,
                child: Divider(
                  color: appTheme.blueGray100,
                ),
              ),
            ),
            _buildLine(context),
          ],
        ),
      ),
    );
  }
}
