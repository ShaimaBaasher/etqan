import '../service_details_screen/widgets/servicedetails_item_widget.dart';
import 'bloc/service_details_bloc.dart';
import 'models/service_details_model.dart';
import 'models/servicedetails_item_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:etqan_client/widgets/app_bar/custom_app_bar.dart';
import 'package:etqan_client/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ServiceDetailsScreen extends StatelessWidget {
  const ServiceDetailsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ServiceDetailsBloc>(
        create: (context) => ServiceDetailsBloc(
            ServiceDetailsState(serviceDetailsModelObj: ServiceDetailsModel()))
          ..add(ServiceDetailsInitialEvent()),
        child: ServiceDetailsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 26.v),
          child: Column(
            children: [
              _buildHouseEleven(context),
              SizedBox(height: 22.v),
              Divider(color: appTheme.blueGray100),
              SizedBox(height: 30.v),
              _buildEight(context),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 21.h,
                  ),
                  child: Text(
                    "lbl53".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 2.v),
              _buildServiceDetails(context)
            ],
          ),
        ),
        bottomNavigationBar: _buildChooseVisitDate(
          context,
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(actions: [
      AppbarTrailingIconbutton(
        imagePath: ImageConstant.imgCloseBlueGray100,
        margin: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 1.v,
        ),
        onTap: () {
          onTapClose(context);
        },
      ),
    ]);
  }

  /// Section Widget
  Widget _buildHouseEleven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 28.h, right: 23.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgHouse11,
            height: 60.adaptSize,
            width: 60.adaptSize,
            margin: EdgeInsets.only(
              top: 10.v,
              bottom: 8.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "lbl50".tr,
                              style: CustomTextStyles.titleLargeOnPrimary),
                          TextSpan(text: " "),
                          TextSpan(
                            text: "lbl51".tr,
                            style: CustomTextStyles.titleLargePrimary,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 1.v,
                  ),
                  SizedBox(
                    width: 267.h,
                    child: Text(
                      "msg19".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.right,
                      style: theme.textTheme.bodyMedium,
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
  Widget _buildEight(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.h, right: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBlackE.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: Text(
                "msg20".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 5,
                child: CustomElevatedButton(
                  height: 35.v,
                  text: "lbl52".tr,
                  margin: EdgeInsets.only(right: 5.h),
                  buttonStyle: CustomButtonStyles.fillGray,
                  buttonTextStyle: theme.textTheme.titleSmall!,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 5,
                child: CustomElevatedButton(
                  height: 35.v,
                  text: "lbl20".tr,
                  margin: EdgeInsets.only(left: 5.h),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
                ),
              ),
            ],
          ),
          SizedBox(height: 7.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildServiceDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: BlocSelector<ServiceDetailsBloc, ServiceDetailsState,
          ServiceDetailsModel?>(
        selector: (state) => state.serviceDetailsModelObj,
        builder: (context, serviceDetailsModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 13.v);
            },
            itemCount:
                serviceDetailsModelObj?.servicedetailsItemList.length ?? 0,
            itemBuilder: (context, index) {
              ServicedetailsItemModel model =
                  serviceDetailsModelObj?.servicedetailsItemList[index] ??
                      ServicedetailsItemModel();
              return ServicedetailsItemWidget(model);
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildChooseVisitDate(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.h, right: 21.h, bottom: 38.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomElevatedButton(
            width: 167.h,
            text: "msg17".tr,
            margin: EdgeInsets.only(bottom: 1.v),
            onPressed: () {
              onTaptf(context);
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "lbl39".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_200".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the onboardingContainerScreen when the action is triggered.
  onTapClose(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingContainerScreen,
    );
  }

  /// Navigates to the selectDateSlotsScreen when the action is triggered.
  onTaptf(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.selectDateSlotsScreen,
    );
  }
}
