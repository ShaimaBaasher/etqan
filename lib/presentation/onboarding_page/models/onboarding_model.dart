// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'discountbanner_item_model.dart';
import 'maintenancerequests_item_model.dart';

/// This class defines the variables used in the [onboarding_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingModel extends Equatable {
  OnboardingModel({
    this.discountbannerItemList = const [],
    this.maintenancerequestsItemList = const [],
  }) {}

  List<DiscountbannerItemModel> discountbannerItemList;

  List<MaintenancerequestsItemModel> maintenancerequestsItemList;

  OnboardingModel copyWith({
    List<DiscountbannerItemModel>? discountbannerItemList,
    List<MaintenancerequestsItemModel>? maintenancerequestsItemList,
  }) {
    return OnboardingModel(
      discountbannerItemList:
          discountbannerItemList ?? this.discountbannerItemList,
      maintenancerequestsItemList:
          maintenancerequestsItemList ?? this.maintenancerequestsItemList,
    );
  }

  @override
  List<Object?> get props =>
      [discountbannerItemList, maintenancerequestsItemList];
}
