import 'bloc/sign_in_two_bloc.dart';
import 'models/sign_in_two_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/custom_elevated_button.dart';
import 'package:etqan_client/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignInTwoScreen extends StatefulWidget {
  const SignInTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInTwoBloc>(
        create: (context) =>
            SignInTwoBloc(SignInTwoState(signInTwoModelObj: SignInTwoModel()))
              ..add(SignInTwoInitialEvent()),
        child: SignInTwoScreen());
  }

  @override
  State<SignInTwoScreen> createState() => _SignInTwoScreenState();
}

class _SignInTwoScreenState extends State<SignInTwoScreen> {
  late FocusNode focusNode;

  void initState() {
    super.initState();
    focusNode = new FocusNode();

    focusNode.addListener(
        () => print('focusNode updated: hasFocus: ${focusNode.hasFocus}'));
  }

  void setFocus() {
    FocusScope.of(context).requestFocus(focusNode);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInTwoBloc, SignInTwoState>(
        builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: double.maxFinite,
            child: Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(
                    height: 447.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage2,
                          height: 447.v,
                          width: 393.h,
                          alignment: Alignment.center,
                        ),
                        _buildEtqLogoSection(context),
                        CustomImageView(
                            imagePath: ImageConstant.imgWindowCleaning,
                            height: 175.adaptSize,
                            width: 175.adaptSize,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(right: 7.h, bottom: 92.v))
                      ],
                    ),
                  ),
                  Divider(color: theme.colorScheme.primary),
                  SizedBox(height: 44.v),
                  Center(
                    child: Text(
                      "msg9".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  _buildInputSection(context),
                  SizedBox(height: 40.v),
                  CustomElevatedButton(
                    text: "lbl13".tr,
                    margin: EdgeInsets.only(left: 26.h, right: 27.h),
                    onPressed: () {
                      onTaptf(context);
                    },
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  /// Section Widget
  Widget _buildEtqLogoSection(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 71.h, vertical: 118.v),
        decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.customBorderBR6,
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgGroup6), fit: BoxFit.cover)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 12.v),
            CustomImageView(
              imagePath: ImageConstant.imgEtqLogo,
              height: 83.v,
              width: 181.h,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 26.h),
      padding: EdgeInsets.all(10.h),
      child: Padding(
        padding: EdgeInsets.only(top: 2.v),
        child: CustomTextFormField(
          // controller: fullnameController,
          // autofocus: true,
          textInputType: TextInputType.number,
          scrollPadding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ), // This line works.
          focusNode: focusNode,
          hintText: "lbl12".tr,
          suffix: Padding(
            padding: EdgeInsets.only(top: 13.v, bottom: 1.v),
            child: Text(
              "lbl_966".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the signInOneScreen when the action is triggered.
  onTaptf(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInOneScreen,
    );
  }
}
