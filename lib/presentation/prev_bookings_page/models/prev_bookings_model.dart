// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [prev_bookings_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PrevBookingsModel extends Equatable {
  PrevBookingsModel() {}

  PrevBookingsModel copyWith() {
    return PrevBookingsModel();
  }

  @override
  List<Object?> get props => [];
}
