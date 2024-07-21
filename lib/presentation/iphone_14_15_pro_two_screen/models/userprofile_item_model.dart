import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.homeText,
    this.addressText,
    this.id,
  }) {
    homeText = homeText ?? "المنزل";
    addressText = addressText ?? "شارع التحلية ـ كونكورد بلازا صند...";
    id = id ?? "";
  }

  String? homeText;

  String? addressText;

  String? id;
}
