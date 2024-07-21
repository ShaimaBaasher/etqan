import 'bloc/onboarding_one_bloc.dart';
import 'models/onboarding_one_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingOneBloc>(
        create: (context) => OnboardingOneBloc(
            OnboardingOneState(onboardingOneModelObj: OnboardingOneModel()))
          ..add(OnboardingOneInitialEvent()),
        child: OnboardingOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingOneBloc, OnboardingOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(
                        height: 476.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 470.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage2470x393,
                                            height: 470.v,
                                            width: 393.h,
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgSdcsd1,
                                            height: 238.v,
                                            width: 155.h,
                                            alignment: Alignment.bottomRight,
                                            margin: EdgeInsets.only(
                                                right: 13.h, bottom: 50.v))
                                      ]))),
                          CustomImageView(
                              imagePath: ImageConstant.imgRecording2023,
                              height: 272.v,
                              width: 330.h,
                              alignment: Alignment.bottomLeft),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 6.v),
                                  child: SizedBox(
                                      width: double.maxFinite,
                                      child: Divider(
                                          color: theme.colorScheme.primary))))
                        ])),
                    SizedBox(height: 54.v),
                    Text("msg10".tr, style: theme.textTheme.titleLarge),
                    SizedBox(height: 5.v),
                    Container(
                        width: 288.h,
                        margin: EdgeInsets.symmetric(horizontal: 52.h),
                        child: Text("msg11".tr,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyMedium)),
                    SizedBox(height: 65.v),
                    CustomElevatedButton(
                        text: "lbl14".tr,
                        margin: EdgeInsets.only(left: 26.h, right: 27.h),
                        onPressed: () {
                          onTaptf(context);
                        }),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Navigates to the onboardingContainerScreen when the action is triggered.
  onTaptf(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInTwoScreen,
    );
  }
}
