import 'bloc/iphone_14_15_pro_three_bloc.dart';
import 'models/iphone_14_15_pro_three_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/app_bar/appbar_subtitle.dart';
import 'package:etqan_client/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:etqan_client/widgets/app_bar/custom_app_bar.dart';
import 'package:etqan_client/widgets/custom_elevated_button.dart';
import 'package:etqan_client/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone1415ProThreeScreen extends StatelessWidget {
  const Iphone1415ProThreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProThreeBloc>(
        create: (context) => Iphone1415ProThreeBloc(Iphone1415ProThreeState(
            iphone1415ProThreeModelObj: Iphone1415ProThreeModel()))
          ..add(Iphone1415ProThreeInitialEvent()),
        child: Iphone1415ProThreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone1415ProThreeBloc, Iphone1415ProThreeState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 45.v),
                  child: Column(children: [
                    _buildTwenty(context),
                    Spacer(),
                    SizedBox(height: 26.v),
                    CustomElevatedButton(
                        text: "msg28".tr,
                        margin: EdgeInsets.only(left: 6.h, right: 7.h))
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl64".tr),
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
  Widget _buildTwenty(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 6.h),
        padding: EdgeInsets.all(10.h),
        decoration: AppDecoration.outlineBluegray10001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomOutlinedButton(
                  width: 47.h,
                  text: "lbl32".tr,
                  margin: EdgeInsets.only(left: 7.h, top: 7.v, bottom: 7.v)),
              Spacer(),
              Column(children: [
                Text("msg_mastercard".tr, style: theme.textTheme.titleSmall),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text("msg_expires_in_08_2030".tr,
                        style: CustomTextStyles.bodyMediumGray500))
              ]),
              CustomImageView(
                  imagePath: ImageConstant.imgImage5,
                  height: 22.v,
                  width: 36.h,
                  margin: EdgeInsets.only(left: 16.h, top: 9.v, bottom: 9.v))
            ]));
  }

  /// Navigates to the moreScreen when the action is triggered.
  onTapClose(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.moreScreen,
    );
  }
}
