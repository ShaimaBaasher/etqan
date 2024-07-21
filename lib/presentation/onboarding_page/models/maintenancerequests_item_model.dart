import '../../../core/app_export.dart';

/// This class is used in the [maintenancerequests_item_widget] screen.
class MaintenancerequestsItemModel {
  MaintenancerequestsItemModel({
    this.maintenanceImage,
    this.maintenanceText,
    this.id,
  }) {
    maintenanceImage = maintenanceImage ?? ImageConstant.imgHouse1141x41;
    maintenanceText = maintenanceText ?? "طلبات الصيانة";
    id = id ?? "";
  }

  String? maintenanceImage;

  String? maintenanceText;

  String? id;
}
