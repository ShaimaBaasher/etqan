import '../../../core/app_export.dart';

/// This class is used in the [servicedetails_item_widget] screen.
class ServicedetailsItemModel {
  ServicedetailsItemModel({
    this.price,
    this.brief,
    this.hoverText,
    // this.desc,
    this.id,
  }) {
    price = price ?? "50 ر.س/ساعة ";
    brief = brief ?? "تنظيف منزل جديد";
    hoverText = hoverText ?? "تفاصيل الخدمة";
    // desc = desc ?? "تفاصيل الخدمة";
    id = id ?? "";
  }

  String? price;

  String? brief;

  String? hoverText;

  // String? desc;

  String? id;
}
