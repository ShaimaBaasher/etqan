import 'bloc/prev_bookings_bloc.dart';
import 'models/prev_bookings_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PrevBookingsPage extends StatefulWidget {
  const PrevBookingsPage({Key? key})
      : super(
          key: key,
        );

  @override
  PrevBookingsPageState createState() => PrevBookingsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PrevBookingsBloc>(
      create: (context) => PrevBookingsBloc(PrevBookingsState(
        prevBookingsModelObj: PrevBookingsModel(),
      ))
        ..add(PrevBookingsInitialEvent()),
      child: PrevBookingsPage(),
    );
  }
}

class PrevBookingsPageState extends State<PrevBookingsPage>
    with AutomaticKeepAliveClientMixin<PrevBookingsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrevBookingsBloc, PrevBookingsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                children: [
                  SizedBox(height: 192.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 119.h),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup26780,
                          height: 166.v,
                          width: 150.h,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "msg25".tr,
                          style: CustomTextStyles.titleSmallOnPrimary,
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
