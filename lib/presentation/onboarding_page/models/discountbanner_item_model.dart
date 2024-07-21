import '../../../core/app_export.dart';

/// This class is used in the [discountbanner_item_widget] screen.
class DiscountbannerItemModel {
  DiscountbannerItemModel({
    this.discountPercentage,
    this.discountText,
    this.discountCode,
    this.codeText,
    this.imageSource,
    this.id,
  }) {
    discountPercentage = discountPercentage ?? "15%";
    discountText = discountText ?? "خصم على جميع خدمات التنظيف";
    discountCode = discountCode ?? " ETQ15";
    codeText = codeText ?? "استخدم الكود";
    imageSource = imageSource ?? ImageConstant.imgImageRemovebgPreview;
    id = id ?? "";
  }

  String? discountPercentage;

  String? discountText;

  String? discountCode;

  String? codeText;

  String? imageSource;

  String? id;
}
