import 'bloc/start_bloc.dart';
import 'models/start_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<StartBloc>(
        create: (context) => StartBloc(StartState(startModelObj: StartModel()))
          ..add(StartInitialEvent()),
        child: StartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StartBloc, StartState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 56.h, top: 174.v, right: 56.h),
                  child: Column(children: [
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl2".tr,
                              style: theme.textTheme.displayLarge),
                          TextSpan(text: " "),
                          TextSpan(
                              text: "lbl3".tr,
                              style: CustomTextStyles.displayLargePrimary)
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 92.v),
                    GestureDetector(
                        onTap: () {
                          onTapWidget(context);
                        },
                        child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            color: theme.colorScheme.primary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.circleBorder80),
                            child: Container(
                                height: 160.adaptSize,
                                width: 160.adaptSize,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 37.h, vertical: 31.v),
                                decoration: AppDecoration.fillPrimary.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder80),
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 8.v),
                                              child: Text("lbl4".tr,
                                                  style: CustomTextStyles
                                                      .titleLargeWhiteA700))),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text("lbl5".tr,
                                              style: theme
                                                  .textTheme.displayMedium))
                                    ])))),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Navigates to the splashScreen when the action is triggered.
  onTapWidget(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.splashScreen,
    );
  }
}
