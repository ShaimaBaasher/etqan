import '../iphone_14_15_pro_two_screen/widgets/userprofile_item_widget.dart';
import 'bloc/iphone_14_15_pro_two_bloc.dart';
import 'models/iphone_14_15_pro_two_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/app_bar/appbar_subtitle.dart';
import 'package:etqan_client/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:etqan_client/widgets/app_bar/custom_app_bar.dart';
import 'package:etqan_client/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Iphone1415ProTwoScreen extends StatelessWidget {
  const Iphone1415ProTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProTwoBloc>(
        create: (context) => Iphone1415ProTwoBloc(Iphone1415ProTwoState(
            iphone1415ProTwoModelObj: Iphone1415ProTwoModel()))
          ..add(Iphone1415ProTwoInitialEvent()),
        child: Iphone1415ProTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 44.v),
                child: Column(children: [
                  _buildUserProfile(context),
                  SizedBox(height: 459.v),
                  CustomElevatedButton(
                      text: "msg30".tr,
                      margin: EdgeInsets.only(left: 3.h, right: 4.h)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl66".tr),
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
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<Iphone1415ProTwoBloc, Iphone1415ProTwoState,
            Iphone1415ProTwoModel?>(
        selector: (state) => state.iphone1415ProTwoModelObj,
        builder: (context, iphone1415ProTwoModelObj) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 17.v);
              },
              itemCount:
                  iphone1415ProTwoModelObj?.userprofileItemList.length ?? 0,
              itemBuilder: (context, index) {
                UserprofileItemModel model =
                    iphone1415ProTwoModelObj?.userprofileItemList[index] ??
                        UserprofileItemModel();
                return UserprofileItemWidget(model);
              });
        });
  }

  /// Navigates to the moreScreen when the action is triggered.
  onTapClose(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.moreScreen,
    );
  }
}
