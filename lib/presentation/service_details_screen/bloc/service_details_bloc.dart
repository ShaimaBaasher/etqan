import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/servicedetails_item_model.dart';
import 'package:etqan_client/presentation/service_details_screen/models/service_details_model.dart';
part 'service_details_event.dart';
part 'service_details_state.dart';

/// A bloc that manages the state of a ServiceDetails according to the event that is dispatched to it.
class ServiceDetailsBloc
    extends Bloc<ServiceDetailsEvent, ServiceDetailsState> {
  ServiceDetailsBloc(ServiceDetailsState initialState) : super(initialState) {
    on<ServiceDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ServiceDetailsInitialEvent event,
    Emitter<ServiceDetailsState> emit,
  ) async {
    emit(state.copyWith(
        serviceDetailsModelObj: state.serviceDetailsModelObj
            ?.copyWith(servicedetailsItemList: fillServicedetailsItemList())));
  }

  List<ServicedetailsItemModel> fillServicedetailsItemList() {
    return [
      ServicedetailsItemModel(
          price: "50 ر.س/ساعة ",
          brief: "تنظيف منزل جديد",
          hoverText: "تفاصيل الخدمة"),
      ServicedetailsItemModel(
          price: "80 ر.س/ساعة ",
          brief: "تنظيف عميق للبيت",
          hoverText: "تفاصيل الخدمة"),
      ServicedetailsItemModel(
          price: "100 ر.س/ساعة ",
          brief: "تنظيف خزانات المياه و المسابح",
          hoverText: "تفاصيل الخدمة"),
      ServicedetailsItemModel(
          price: "150 ر.س/ساعة ",
          brief: "تنظيف وتعقيم المكيفات",
          hoverText: "تفاصيل الخدمة")
    ];
  }
}
