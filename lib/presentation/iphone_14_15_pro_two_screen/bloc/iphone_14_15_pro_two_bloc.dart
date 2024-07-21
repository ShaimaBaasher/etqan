import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:etqan_client/presentation/iphone_14_15_pro_two_screen/models/iphone_14_15_pro_two_model.dart';
part 'iphone_14_15_pro_two_event.dart';
part 'iphone_14_15_pro_two_state.dart';

/// A bloc that manages the state of a Iphone1415ProTwo according to the event that is dispatched to it.
class Iphone1415ProTwoBloc
    extends Bloc<Iphone1415ProTwoEvent, Iphone1415ProTwoState> {
  Iphone1415ProTwoBloc(Iphone1415ProTwoState initialState)
      : super(initialState) {
    on<Iphone1415ProTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProTwoInitialEvent event,
    Emitter<Iphone1415ProTwoState> emit,
  ) async {
    emit(state.copyWith(
        iphone1415ProTwoModelObj: state.iphone1415ProTwoModelObj
            ?.copyWith(userprofileItemList: fillUserprofileItemList())));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          homeText: "المنزل",
          addressText: "شارع التحلية ـ كونكورد بلازا صند..."),
      UserprofileItemModel(
          homeText: "المكتب",
          addressText: "شارع التحلية ـ كونكورد بلازا صند...")
    ];
  }
}
