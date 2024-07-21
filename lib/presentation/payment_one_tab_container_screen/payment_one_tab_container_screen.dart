import 'bloc/payment_one_tab_container_bloc.dart';
import 'models/payment_one_tab_container_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/presentation/payment_one_page/payment_one_page.dart';
import 'package:etqan_client/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:etqan_client/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PaymentOneTabContainerScreen extends StatefulWidget {
  const PaymentOneTabContainerScreen({Key? key}) : super(key: key);

  @override
  PaymentOneTabContainerScreenState createState() =>
      PaymentOneTabContainerScreenState();

  static Widget builder(BuildContext context) {
    // return BlocProvider<PaymentOneTabContainerBloc>(
    //   create: (context) => PaymentOneTabContainerBloc(
    //     PaymentOneTabContainerState(
    //       paymentOneTabContainerModelObj: PaymentOneTabContainerModel(),
    //     ),
    //   )..add(PaymentOneTabContainerInitialEvent()),
    //   child: PaymentOneTabContainerScreen(),
    // );

    return PaymentOneTabContainerScreen();
  }
}

// ignore_for_file: must_be_immutable
class PaymentOneTabContainerScreenState
    extends State<PaymentOneTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<PaymentOneTabContainerBloc, PaymentOneTabContainerState>(
    //   builder: (context, state) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 10.v),
              _buildTabview(context),
              Expanded(
                child: PaymentOnePage(),
              ),
            ],
          ),
        ),
      ),
    );
    //   },
    // );
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
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 54.v,
      width: 357.h,
      decoration: BoxDecoration(
        color: appTheme.indigo800,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCalendar,
                  color: appTheme.gray300,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  radius: BorderRadius.circular(5.h),
                  margin: EdgeInsets.only(left: 6.h),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 6.v,
                    bottom: 3.v,
                    left: 6.h,
                  ),
                  child: Text(
                    "lbl22".tr,
                    style: CustomTextStyles.bodyMediumWhiteA700,
                  ),
                ),
                Text(
                  "lbl_2_2024".tr,
                  style: CustomTextStyles.bodyMediumWhiteA700,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBoldDuotoneTime,
                  color: appTheme.gray300,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(left: 3.h),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.v, bottom: 5.v),
                  child: Text(
                    "lbl21".tr,
                    style: CustomTextStyles.bodyMediumWhiteA700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the selectDateSlotsScreen when the action is triggered.
  onTapClose(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.selectDateSlotsScreen,
    );
  }
}
