import 'bloc/iphone_14_15_pro_one_bloc.dart';
import 'models/iphone_14_15_pro_one_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/app_bar/appbar_subtitle.dart';
import 'package:etqan_client/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:etqan_client/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Iphone1415ProOneScreen extends StatelessWidget {
  const Iphone1415ProOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProOneBloc>(
        create: (context) => Iphone1415ProOneBloc(Iphone1415ProOneState(
            iphone1415ProOneModelObj: Iphone1415ProOneModel()))
          ..add(Iphone1415ProOneInitialEvent()),
        child: Iphone1415ProOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone1415ProOneBloc, Iphone1415ProOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 26.h, vertical: 33.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgEtqLogo,
                        height: 95.v,
                        width: 208.h),
                    SizedBox(height: 17.v),
                    SizedBox(
                        width: 336.h,
                        child: Text("msg32".tr,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.right,
                            style: theme.textTheme.bodyMedium)),
                    SizedBox(height: 6.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                            width: 126.h,
                            child: Text("msg33".tr,
                                maxLines: 6,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.right,
                                style: theme.textTheme.bodyMedium))),
                    SizedBox(height: 13.v),
                    Container(
                        width: 328.h,
                        margin: EdgeInsets.only(left: 11.h),
                        child: Text("msg32".tr,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.right,
                            style: theme.textTheme.bodyMedium)),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl68".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgCloseBlueGray100,
              margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.v),
              onTap: () {
                onTapClose(context);
              })
        ]);
  }

  /// Navigates to the moreScreen when the action is triggered.
  onTapClose(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.moreScreen,
    );
  }
}
