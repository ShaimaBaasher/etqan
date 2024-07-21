// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'servicedetails_item_model.dart';

/// This class defines the variables used in the [service_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ServiceDetailsModel extends Equatable {
  ServiceDetailsModel({this.servicedetailsItemList = const []}) {}

  List<ServicedetailsItemModel> servicedetailsItemList;

  ServiceDetailsModel copyWith(
      {List<ServicedetailsItemModel>? servicedetailsItemList}) {
    return ServiceDetailsModel(
      servicedetailsItemList:
          servicedetailsItemList ?? this.servicedetailsItemList,
    );
  }

  @override
  List<Object?> get props => [servicedetailsItemList];
}
