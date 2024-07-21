import 'bloc/sign_in_one_bloc.dart';
import 'models/sign_in_one_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:etqan_client/widgets/app_bar/custom_app_bar.dart';
import 'package:etqan_client/widgets/custom_elevated_button.dart';
import 'package:etqan_client/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class SignInOneScreen extends StatelessWidget {
  const SignInOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInOneBloc>(
        create: (context) =>
            SignInOneBloc(SignInOneState(signInOneModelObj: SignInOneModel()))
              ..add(SignInOneInitialEvent()),
        child: SignInOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 23.v),
          child: Column(
            children: [
              Container(
                  height: 150.adaptSize,
                  width: 150.adaptSize,
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.h, vertical: 7.v),
                  decoration: AppDecoration.gradientPrimaryToPrimary
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder75),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgBoldDuotoneMessages,
                      height: 116.adaptSize,
                      width: 116.adaptSize,
                      alignment: Alignment.topCenter)),
              SizedBox(height: 27.v),
              Text("msg5".tr, style: theme.textTheme.titleLarge),
              SizedBox(height: 2.v),
              SizedBox(
                height: 51.v,
                width: 192.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "msg6".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: 3.v,
                          right: 16.h,
                        ),
                        child: Text(
                          "msg_966_1234_567_89".tr,
                          style: theme.textTheme.titleSmall,
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBoldDuotoneMessagesPrimary,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 16.h,
                      ),
                      onTap: () {
                        onTaptEdit(context);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h, right: 25.h),
                child: BlocSelector<SignInOneBloc, SignInOneState,
                    TextEditingController?>(
                  selector: (state) => state.otpController,
                  builder: (context, otpController) {
                    return Directionality(
                      textDirection: TextDirection.ltr,
                      child: CustomPinCodeTextField(
                        context: context,
                        controller: otpController,
                        onChanged: (value) {
                          otpController?.text = value;
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 28.v,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg8".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    TextSpan(
                      text: "lbl10".tr,
                      style: CustomTextStyles.titleSmallPrimarySemiBold,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 40.v),
              CustomElevatedButton(
                text: "lbl11".tr,
                onPressed: () {
                  onTaptf(context);
                },
              ),
              SizedBox(
                height: 5.v,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgCloseBlueGray100,
          margin: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 1.v,
          ),
          onTap: () {
            onTapClose(context);
          },
        )
      ],
    );
  }

  /// Navigates to the signInTwoScreen when the action is triggered.
  onTapClose(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInTwoScreen,
    );
  }

  /// Navigates to the signInThreeScreen when the action is triggered.
  onTaptf(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInThreeScreen,
    );
  }

  /// Navigates to the previous screen when the action is triggered.
  onTaptEdit(BuildContext context) {
    NavigatorService.popAndPushNamed(
      AppRoutes.signInTwoScreen,
    );
  }
}
