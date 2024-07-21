import 'bloc/sign_in_bloc.dart';
import 'models/sign_in_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:etqan_client/widgets/app_bar/custom_app_bar.dart';
import 'package:etqan_client/widgets/custom_elevated_button.dart';
import 'package:etqan_client/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInBloc>(
        create: (context) =>
            SignInBloc(SignInState(signInModelObj: SignInModel()))
              ..add(SignInInitialEvent()),
        child: SignInScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 28.v),
          child: Column(
            children: [
              SizedBox(
                height: 161.v,
                width: 150.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 150.adaptSize,
                        width: 150.adaptSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(75.h),
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0),
                            end: Alignment(0.5, 1),
                            colors: [
                              theme.colorScheme.primary.withOpacity(0),
                              theme.colorScheme.primary.withOpacity(0.35)
                            ],
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                        imagePath: ImageConstant.imgBoldDuotoneUsers,
                        height: 143.adaptSize,
                        width: 143.adaptSize,
                        radius: BorderRadius.circular(5.h),
                        alignment: Alignment.topCenter)
                  ],
                ),
              ),
              SizedBox(height: 46.v),
              _buildSignInForm(context),
              SizedBox(height: 40.v),
              CustomElevatedButton(
                  text: "lbl7".tr,
                  onPressed: () {
                    onTaptf(context);
                  }),
              SizedBox(height: 5.v)
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
          margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 1.v),
          onTap: () {
            onTapClose(context);
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSignInForm(BuildContext context) {
    return Column(children: [
      Align(
          alignment: Alignment.centerRight,
          child: Text("msg".tr, style: theme.textTheme.titleLarge)),
      SizedBox(height: 13.v),
      BlocSelector<SignInBloc, SignInState, TextEditingController?>(
          selector: (state) => state.fullnameController,
          builder: (context, fullnameController) {
            return CustomTextFormField(
                controller: fullnameController, hintText: "lbl6".tr);
          }),
      SizedBox(height: 15.v),
      BlocSelector<SignInBloc, SignInState, TextEditingController?>(
          selector: (state) => state.emailController,
          builder: (context, emailController) {
            return CustomTextFormField(
                controller: emailController,
                hintText: "msg2".tr,
                textInputAction: TextInputAction.done);
          })
    ]);
  }

  /// Navigates to the signInThreeScreen when the action is triggered.
  onTapClose(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInThreeScreen,
    );
  }

  /// Navigates to the onboardingContainerScreen when the action is triggered.
  onTaptf(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardingContainerScreen,
    );
  }
}
