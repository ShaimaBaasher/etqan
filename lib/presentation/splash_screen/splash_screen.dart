import 'dart:math';
import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(SplashState(
        splashModelObj: SplashModel(),
      ))
        ..add(SplashInitialEvent()),
      child: SplashScreen(),
    );
  }

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController cleanerAnimationController;

  @override
  void initState() {
    super.initState();
    cleanerAnimationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    animation = Tween<double>(begin: 0, end: 1).animate(cleanerAnimationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          NavigatorService.popAndPushNamed(
            AppRoutes.onboardingOneScreen,
          );
        }
      });

    cleanerAnimationController.forward();
  }

  double boxX(double value) {
    if (value < 0.5) {
      return 80.v;
    }
    value = (value - 0.5)*2;
    return 80.v + 0.9*value*393.v;
  }

  double boxY(double value) {
    if (value < 0.5) {
      return 0;
    }
    value = (value - 0.5)*2;
    return 0.1*value*852.h;
  }

  double boxZrotation(double value) {
    if (value < 0.5) {
      return 0;
    }
    value = (value - 0.5)*2;
    return 0.25*pi*value;
  }

  double cleanerX(double value) {
    value = (value - 0.5).abs()*2;
    return 0.9*value*393.v;
  }

  double cleanerY(double value) {
    value = (value - 0.5).abs()*2;
    return 0.1*value*852.h;
  }

  double cleanerZrotation(double value) {
    value = (value - 0.5).abs()*2;
    return -0.25*pi + 0.25*pi*value;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 146.v),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  SizedBox(
                    height: 448.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEtqLogo,
                          height: 112.v,
                          width: 245.h,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 79.v),
                        ),
                        Positioned(
                          top: boxY(animation.value),
                          left: boxX(animation.value),
                          child: Transform(
                            transform: Matrix4.rotationZ(
                                boxZrotation(animation.value)),
                            alignment: Alignment.center,
                            origin: Offset(0, 11.5),
                            child: SizedBox(
                              child: Container(
                                color: Colors.white,
                              ),
                              height: 212.v,
                              width: 235.h,
                            ),
                          ),
                        ),
                        Positioned(
                          top: cleanerY(animation.value),
                          left: cleanerX(animation.value),
                          child: Transform(
                            transform: Matrix4.rotationZ(
                                cleanerZrotation(animation.value)),
                            alignment: Alignment.center,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgWindowCleaning,
                              height: 212.v,
                              width: 212.h,
                              alignment: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
