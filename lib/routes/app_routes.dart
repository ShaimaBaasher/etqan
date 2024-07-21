import 'package:flutter/material.dart';
import 'package:etqan_client/presentation/start_screen/start_screen.dart';
import 'package:etqan_client/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:etqan_client/presentation/sign_in_three_screen/sign_in_three_screen.dart';
import 'package:etqan_client/presentation/sign_in_one_screen/sign_in_one_screen.dart';
import 'package:etqan_client/presentation/sign_in_two_screen/sign_in_two_screen.dart';
import 'package:etqan_client/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:etqan_client/presentation/splash_screen/splash_screen.dart';
import 'package:etqan_client/presentation/notifications_screen/notifications_screen.dart';
import 'package:etqan_client/presentation/suceess_one_screen/suceess_one_screen.dart';
import 'package:etqan_client/presentation/payment_screen/payment_screen.dart';
import 'package:etqan_client/presentation/payment_one_tab_container_screen/payment_one_tab_container_screen.dart';
import 'package:etqan_client/presentation/select_date_slots_screen/select_date_slots_screen.dart';
import 'package:etqan_client/presentation/service_details_screen/service_details_screen.dart';
import 'package:etqan_client/presentation/onboarding_container_screen/onboarding_container_screen.dart';
import 'package:etqan_client/presentation/suceess_screen/suceess_screen.dart';
import 'package:etqan_client/presentation/current_bookings_tab_container_screen/current_bookings_tab_container_screen.dart';
import 'package:etqan_client/presentation/iphone_14_15_pro_three_screen/iphone_14_15_pro_three_screen.dart';
import 'package:etqan_client/presentation/iphone_14_15_pro_two_screen/iphone_14_15_pro_two_screen.dart';
import 'package:etqan_client/presentation/iphone_14_15_pro_one_screen/iphone_14_15_pro_one_screen.dart';
import 'package:etqan_client/presentation/more_screen/more_screen.dart';
import 'package:etqan_client/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String startScreen = '/start_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signInThreeScreen = '/sign_in_three_screen';

  static const String signInOneScreen = '/sign_in_one_screen';

  static const String signInTwoScreen = '/sign_in_two_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String splashScreen = '/splash_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String suceessOneScreen = '/suceess_one_screen';

  static const String paymentScreen = '/payment_screen';

  static const String paymentOnePage = '/payment_one_page';

  static const String paymentOneTabContainerScreen =
      '/payment_one_tab_container_screen';

  static const String selectDateSlotsScreen = '/select_date_slots_screen';

  static const String serviceDetailsScreen = '/service_details_screen';

  static const String onboardingPage = '/onboarding_page';

  static const String onboardingContainerScreen =
      '/onboarding_container_screen';

  static const String suceessScreen = '/suceess_screen';

  static const String prevBookingsPage = '/prev_bookings_page';

  static const String currentBookingsPage = '/current_bookings_page';

  static const String currentBookingsTabContainerScreen =
      '/current_bookings_tab_container_screen';

  static const String iphone1415ProThreeScreen =
      '/iphone_14_15_pro_three_screen';

  static const String iphone1415ProTwoScreen = '/iphone_14_15_pro_two_screen';

  static const String iphone1415ProOneScreen = '/iphone_14_15_pro_one_screen';

  static const String moreScreen = '/more_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        startScreen: StartScreen.builder,
        signInScreen: SignInScreen.builder,
        signInThreeScreen: SignInThreeScreen.builder,
        signInOneScreen: SignInOneScreen.builder,
        signInTwoScreen: SignInTwoScreen.builder,
        onboardingOneScreen: OnboardingOneScreen.builder,
        splashScreen: SplashScreen.builder,
        notificationsScreen: NotificationsScreen.builder,
        suceessOneScreen: SuceessOneScreen.builder,
        paymentScreen: PaymentScreen.builder,
        paymentOneTabContainerScreen: PaymentOneTabContainerScreen.builder,
        selectDateSlotsScreen: SelectDateSlotsScreen.builder,
        serviceDetailsScreen: ServiceDetailsScreen.builder,
        onboardingContainerScreen: OnboardingContainerScreen.builder,
        suceessScreen: SuceessScreen.builder,
        currentBookingsTabContainerScreen:
            CurrentBookingsTabContainerScreen.builder,
        iphone1415ProThreeScreen: Iphone1415ProThreeScreen.builder,
        iphone1415ProTwoScreen: Iphone1415ProTwoScreen.builder,
        iphone1415ProOneScreen: Iphone1415ProOneScreen.builder,
        moreScreen: MoreScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        // initialRoute: StartScreen.builder,
        initialRoute: SplashScreen.builder,
      };
}
