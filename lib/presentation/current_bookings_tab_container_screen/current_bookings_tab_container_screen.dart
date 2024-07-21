import 'bloc/current_bookings_tab_container_bloc.dart';
import 'models/current_bookings_tab_container_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/presentation/current_bookings_page/current_bookings_page.dart';
import 'package:etqan_client/presentation/onboarding_page/onboarding_page.dart';
import 'package:etqan_client/presentation/prev_bookings_page/prev_bookings_page.dart';
import 'package:etqan_client/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class CurrentBookingsTabContainerScreen extends StatefulWidget {
  const CurrentBookingsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CurrentBookingsTabContainerScreenState createState() =>
      CurrentBookingsTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<CurrentBookingsTabContainerBloc>(
      create: (context) =>
          CurrentBookingsTabContainerBloc(CurrentBookingsTabContainerState(
        currentBookingsTabContainerModelObj: CurrentBookingsTabContainerModel(),
      ))
            ..add(CurrentBookingsTabContainerInitialEvent()),
      child: CurrentBookingsTabContainerScreen(),
    );
  }
}

class CurrentBookingsTabContainerScreenState
    extends State<CurrentBookingsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentBookingsTabContainerBloc,
        CurrentBookingsTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 76.v),
                  _buildTabview(context),
                  SizedBox(
                    height: 656.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        PrevBookingsPage(),
                        CurrentBookingsPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 47.v,
      width: 322.h,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.circular(
          6.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'IBM Plex Sans Arabic',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.blueGray900,
        unselectedLabelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'IBM Plex Sans Arabic',
          fontWeight: FontWeight.w500,
        ),
        indicatorPadding: EdgeInsets.all(
          7.5.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            6.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "msg26".tr,
            ),
          ),
          Tab(
            child: Text(
              "msg27".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.tf:
        return AppRoutes.onboardingPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.onboardingPage:
        return OnboardingPage();
      default:
        return DefaultWidget();
    }
  }
}
