import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/discountbanner_item_model.dart';
import '../models/maintenancerequests_item_model.dart';
import 'package:etqan_client/presentation/onboarding_page/models/onboarding_model.dart';
part 'onboarding_event.dart';
part 'onboarding_state.dart';

/// A bloc that manages the state of a Onboarding according to the event that is dispatched to it.
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc(OnboardingState initialState) : super(initialState) {
    on<OnboardingInitialEvent>(_onInitialize);
  }

  List<DiscountbannerItemModel> fillDiscountbannerItemList() {
    return [
      DiscountbannerItemModel(
          discountPercentage: "15%",
          discountText: "خصم على جميع خدمات التنظيف",
          discountCode: " ETQ15",
          codeText: "استخدم الكود",
          imageSource: ImageConstant.imgImageRemovebgPreview)
    ];
  }

  List<MaintenancerequestsItemModel> fillMaintenancerequestsItemList() {
    return [
      MaintenancerequestsItemModel(
          maintenanceImage: ImageConstant.imgHouse1141x41,
          maintenanceText: "طلبات الصيانة"),
      MaintenancerequestsItemModel(
          maintenanceImage: ImageConstant.imgHouse111,
          maintenanceText: "مكافحة الحشرات"),
      MaintenancerequestsItemModel(
          maintenanceImage: ImageConstant.imgHouse112,
          maintenanceText: "عقود العمالة"),
      MaintenancerequestsItemModel(
          maintenanceImage: ImageConstant.imgHouse1147x47,
          maintenanceText: "نقل الاثاثات")
    ];
  }

  _onInitialize(
    OnboardingInitialEvent event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(state.copyWith(
        onboardingModelObj: state.onboardingModelObj?.copyWith(
            discountbannerItemList: fillDiscountbannerItemList(),
            maintenancerequestsItemList: fillMaintenancerequestsItemList())));
  }
}
