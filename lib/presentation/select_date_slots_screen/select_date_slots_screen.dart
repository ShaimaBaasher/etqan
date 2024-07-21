import '../select_date_slots_screen/widgets/framesixteen_item_widget.dart';
import '../select_date_slots_screen/widgets/salesrep_item_widget.dart';
import 'bloc/select_date_slots_bloc.dart';
import 'models/framesixteen_item_model.dart';
import 'models/salesrep_item_model.dart';
import 'models/select_date_slots_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:etqan_client/widgets/app_bar/appbar_subtitle.dart';
import 'package:etqan_client/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:etqan_client/widgets/app_bar/custom_app_bar.dart';
import 'package:etqan_client/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SelectDateSlotsScreen extends StatelessWidget {
  const SelectDateSlotsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SelectDateSlotsBloc>(
      create: (context) => SelectDateSlotsBloc(
        SelectDateSlotsState(
          selectDateSlotsModelObj: SelectDateSlotsModel(),
        ),
      )..add(
          SelectDateSlotsInitialEvent(),
        ),
      child: SelectDateSlotsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            children: [
              _buildRowWithStack(context),
              SizedBox(height: 28.v),
              _buildStackWithCalendar(context),
              SizedBox(height: 26.v),
              _buildColumnWithChipView(context),
              SizedBox(height: 24.v),
              _buildColumnWithSalesRep(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildRowWithButton(
          context,
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(text: "msg17".tr),
      leadingWidth: 53.adaptSize,
      actions: [
        AppbarTrailingIconbutton(
          margin: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 1.v,
          ),
          onTap: () {
            onTapClose(context);
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRowWithStack(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 17.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.v),
        decoration: AppDecoration.fillIndigo
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 50.h,
                  margin: EdgeInsets.only(left: 2.h, top: 13.v, bottom: 13.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.h, vertical: 1.v),
                  decoration: AppDecoration.outlineWhiteA
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Text("lbl34".tr,
                      style: CustomTextStyles.bodyMediumWhiteA70013)),
              Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 11.h),
                            child: Text("lbl40".tr,
                                style:
                                    CustomTextStyles.bodyMediumWhiteA70013))),
                    SizedBox(height: 4.v),
                    SizedBox(
                        height: 23.v,
                        width: 109.h,
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: 23.v,
                                  width: 109.h,
                                  decoration: BoxDecoration(
                                      color: appTheme.whiteA700,
                                      borderRadius:
                                          BorderRadius.circular(4.h)))),
                          Align(
                              alignment: Alignment.center,
                              child: Text("lbl20".tr,
                                  style:
                                      CustomTextStyles.titleSmallOnPrimary_1))
                        ]))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildStackWithCalendar(BuildContext context) {
    return SizedBox(
      height: 129.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(right: 19.h),
              child: Text(
                "lbl41".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 122.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 110.v,
                      width: 75.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.05, 0.54),
                          end: Alignment(0.89, 0.5),
                          colors: [
                            appTheme.whiteA700,
                            appTheme.whiteA700.withOpacity(0)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child:
                        BlocBuilder<SelectDateSlotsBloc, SelectDateSlotsState>(
                      builder: (context, state) {
                        return SizedBox(
                          height: 101.v,
                          width: double.maxFinite,
                          child: TableCalendar(
                            locale: 'ar-SA',
                            daysOfWeekHeight: 24.v,
                            firstDay: DateTime(DateTime.now().year - 5),
                            lastDay: DateTime(DateTime.now().year + 5),
                            calendarFormat: CalendarFormat.week,
                            rangeSelectionMode: state.rangeSelectionMode,
                            startingDayOfWeek: StartingDayOfWeek.saturday,
                            headerStyle: HeaderStyle(
                              formatButtonVisible: false,
                              titleCentered: true,
                              headerMargin: EdgeInsets.only(
                                bottom: 10.v,
                              ),
                            ),
                            calendarStyle: CalendarStyle(
                              outsideDaysVisible: false,
                              isTodayHighlighted: true,
                              todayTextStyle: TextStyle(
                                color: appTheme.black900,
                                fontFamily: 'IBM Plex Sans Arabic',
                                fontWeight: FontWeight.w500,
                              ),
                              todayDecoration: BoxDecoration(
                                color: appTheme.gray100,
                                borderRadius: BorderRadius.circular(5.h),
                              ),
                            ),
                            daysOfWeekStyle: DaysOfWeekStyle(),
                            headerVisible: false,
                            rowHeight: 60.v,
                            focusedDay: state.focusedDay ?? DateTime.now(),
                            rangeStartDay: state.rangeStart,
                            rangeEndDay: state.rangeEnd,
                            onDaySelected: (selectedDay, focusedDay) {
                              if (!isSameDay(state.selectedDay, selectedDay)) {
                                state.focusedDay = focusedDay;
                                state.selectedDay = selectedDay;
                                state.rangeSelectionMode =
                                    RangeSelectionMode.toggledOn;
                              }
                            },
                            onRangeSelected: (start, end, focusedDay) {
                              state.focusedDay = focusedDay;
                              state.rangeEnd = end;
                              state.rangeStart = start;
                              state.rangeSelectionMode =
                                  RangeSelectionMode.toggledOn;
                            },
                            onPageChanged: (focusedDay) {
                              state.focusedDay = focusedDay;
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnWithChipView(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: Text(
                "msg18".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          BlocSelector<SelectDateSlotsBloc, SelectDateSlotsState,
              SelectDateSlotsModel?>(
            selector: (state) => state.selectDateSlotsModelObj,
            builder: (context, selectDateSlotsModelObj) {
              return Wrap(
                runSpacing: 9.v,
                spacing: 9.h,
                children: List<Widget>.generate(
                  selectDateSlotsModelObj?.framesixteenItemList.length ?? 0,
                  (index) {
                    FramesixteenItemModel model =
                        selectDateSlotsModelObj?.framesixteenItemList[index] ??
                            FramesixteenItemModel();
                    return FramesixteenItemWidget(
                      model,
                      onSelectedChipView: (value) {
                        context.read<SelectDateSlotsBloc>().add(
                              UpdateChipViewEvent(
                                index: index,
                                isSelected: value,
                              ),
                            );
                      },
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnWithSalesRep(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 21.h),
            child: Text(
              "lbl45".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ),
        SizedBox(height: 14.v),
        SizedBox(
          height: 109.v,
          child: BlocSelector<SelectDateSlotsBloc, SelectDateSlotsState,
              SelectDateSlotsModel?>(
            selector: (state) => state.selectDateSlotsModelObj,
            builder: (context, selectDateSlotsModelObj) {
              return ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 12.h);
                },
                itemCount:
                    selectDateSlotsModelObj?.salesrepItemList.length ?? 0,
                itemBuilder: (context, index) {
                  SalesrepItemModel model =
                      selectDateSlotsModelObj?.salesrepItemList[index] ??
                          SalesrepItemModel();
                  return SalesrepItemWidget(model);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRowWithButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 21.h,
        bottom: 38.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomElevatedButton(
            width: 167.h,
            text: "lbl48".tr,
            margin: EdgeInsets.only(bottom: 1.v),
            onPressed: () {
              onTaptf(context);
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "lbl39".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_200".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the serviceDetailsScreen when the action is triggered.
  onTapClose(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.serviceDetailsScreen,
    );
  }

  /// Navigates to the paymentOneTabContainerScreen when the action is triggered.
  onTaptf(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentOneTabContainerScreen,
    );
  }
}
