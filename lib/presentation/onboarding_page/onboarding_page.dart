import '../onboarding_page/widgets/discountbanner_item_widget.dart';
import '../onboarding_page/widgets/maintenancerequests_item_widget.dart';
import 'models/discountbanner_item_model.dart';
import 'models/maintenancerequests_item_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/app_bar/appbar_title_image.dart';
import 'package:etqan_client/widgets/app_bar/custom_app_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return OnboardingPage();
  }

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final maintenancerequestsItemList = [
    new MaintenancerequestsItemModel(
      maintenanceImage: ImageConstant.imgHouse1141x41,
      maintenanceText: "طلبات الصيانة",
      id: "1",
    ),
    new MaintenancerequestsItemModel(
      maintenanceImage: ImageConstant.imgHouse1141x41,
      maintenanceText: "طلبات الصيانة",
      id: "2",
    ),
    new MaintenancerequestsItemModel(
      maintenanceImage: ImageConstant.imgHouse1141x41,
      maintenanceText: "طلبات الصيانة",
      id: "3",
    ),
    new MaintenancerequestsItemModel(
      maintenanceImage: ImageConstant.imgHouse1141x41,
      maintenanceText: "طلبات الصيانة",
      id: "4",
    ),
    new MaintenancerequestsItemModel(
      maintenanceImage: ImageConstant.imgHouse1141x41,
      maintenanceText: "طلبات الصيانة",
      id: "5",
    ),
  ];

  final discountbannersList = [
    new DiscountbannerItemModel(
      discountPercentage: "15%",
      discountText: "خصم على جميع خدمات التنظيف",
      discountCode: " ETQ15",
      codeText: "استخدم الكود",
      imageSource: ImageConstant.imgImageRemovebgPreview,
      id: "1",
    ),
    new DiscountbannerItemModel(
      discountPercentage: "15%",
      discountText: "خصم على جميع خدمات التنظيف",
      discountCode: " ETQ15",
      codeText: "استخدم الكود",
      imageSource: ImageConstant.imgImageRemovebgPreview,
      id: "2",
    ),
    new DiscountbannerItemModel(
      discountPercentage: "15%",
      discountText: "خصم على جميع خدمات التنظيف",
      discountCode: " ETQ15",
      codeText: "استخدم الكود",
      imageSource: ImageConstant.imgImageRemovebgPreview,
      id: "3",
    ),
    new DiscountbannerItemModel(
      discountPercentage: "15%",
      discountText: "خصم على جميع خدمات التنظيف",
      discountCode: " ETQ15",
      codeText: "استخدم الكود",
      imageSource: ImageConstant.imgImageRemovebgPreview,
      id: "4",
    ),
    new DiscountbannerItemModel(
      discountPercentage: "15%",
      discountText: "خصم على جميع خدمات التنظيف",
      discountCode: " ETQ15",
      codeText: "استخدم الكود",
      imageSource: ImageConstant.imgImageRemovebgPreview,
      id: "5",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          height: 699.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 13.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 4,
                child: _buildDiscountPercentage(context),
              ),
              Expanded(
                flex: 5,
                child: _buildWidget(context),
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
      leadingWidth: 50.h,
      leading: CustomImageView(
        imagePath: ImageConstant.imgBoldDuotoneNotifications,
        width: 40.h,
        height: 40.h,
        margin: EdgeInsets.only(
          top: 5.v,
          left: 16.h,
        ),
        onTap: () {
          onTapImage(context);
        },
      ),
      title: Container(
        margin: EdgeInsets.only(
          top: 5.v,
          right: 50.h,
        ),
        child: Center(
          child: AppbarTitleImage(
            imagePath: ImageConstant.imgEtqLogo,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDiscountPercentage(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 250.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
            itemCount: discountbannersList.length,
            itemBuilder: (context, index, realIndex) {
              DiscountbannerItemModel? discountbannerItemModel =
                  discountbannersList[index];
              return DiscountbannerItemWidget(
                discountbannerItemModel,
              );
            },
          ),
          Positioned(
            left: 10.h,
            bottom: 45.v,
            child: Container(
              height: 7.v,
              child: AnimatedSmoothIndicator(
                activeIndex: 0,
                count: discountbannersList.length,
                axisDirection: Axis.horizontal,
                effect: ScrollingDotsEffect(
                  spacing: 3.55,
                  activeDotColor: theme.colorScheme.primary,
                  dotColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  dotHeight: 7.v,
                  dotWidth: 7.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(left: 23.h, right: 23.h, bottom: 5.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "lbl55".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
            SizedBox(
              height: 15.v,
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 121.v,
                crossAxisCount: 3,
                mainAxisSpacing: 13.h,
                crossAxisSpacing: 13.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: maintenancerequestsItemList.length,
              itemBuilder: (context, index) {
                MaintenancerequestsItemModel model =
                    maintenancerequestsItemList[index];
                MaintenancerequestsItemModel();
                return MaintenancerequestsItemWidget(
                  model,
                  onTapMaintenanceRequests: () {
                    onTapMaintenanceRequests(context);
                  },
                );
              },
              // );
              // },
            ),
          ],
        ),
      ),
    );
  }

  /// Navigates to the serviceDetailsScreen when the action is triggered.
  onTapMaintenanceRequests(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.serviceDetailsScreen);
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  onTapImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationsScreen,
    );
  }
}
