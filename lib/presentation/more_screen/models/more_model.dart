// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [more_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MoreModel extends Equatable {
  MoreModel() {}

  MoreModel copyWith() {
    return MoreModel();
  }

  @override
  List<Object?> get props => [];
}
