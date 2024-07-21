import 'bloc/onboarding_container_bloc.dart';
import 'models/onboarding_container_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/presentation/onboarding_page/onboarding_page.dart';
import 'package:etqan_client/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OnboardingContainerScreen extends StatelessWidget {
  OnboardingContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingContainerBloc>(
      create: (context) => OnboardingContainerBloc(
        OnboardingContainerState(
          onboardingContainerModelObj: OnboardingContainerModel(),
        ),
      )..add(OnboardingContainerInitialEvent()),
      child: OnboardingContainerScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingContainerBloc, OnboardingContainerState>(
        builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          body: Navigator(
            key: navigatorKey,
            initialRoute: AppRoutes.onboardingPage,
            onGenerateRoute: (routeSetting) => PageRouteBuilder(
              pageBuilder: (ctx, ani, ani1) =>
                  getCurrentPage(context, routeSetting.name!),
              transitionDuration: Duration(seconds: 0),
            ),
          ),
          bottomNavigationBar: _buildBottomBar(context),
        ),
      );
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(
        navigatorKey.currentContext!,
        getCurrentRoute(type),
      );
    });
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
