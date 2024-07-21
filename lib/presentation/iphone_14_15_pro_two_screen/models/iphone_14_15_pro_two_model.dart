// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone1415ProTwoModel extends Equatable {
  Iphone1415ProTwoModel({this.userprofileItemList = const []}) {}

  List<UserprofileItemModel> userprofileItemList;

  Iphone1415ProTwoModel copyWith(
      {List<UserprofileItemModel>? userprofileItemList}) {
    return Iphone1415ProTwoModel(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileItemList];
}
