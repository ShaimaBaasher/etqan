// ignore_for_file: must_be_immutable

part of 'service_details_bloc.dart';

/// Represents the state of ServiceDetails in the application.
class ServiceDetailsState extends Equatable {
  ServiceDetailsState({this.serviceDetailsModelObj});

  ServiceDetailsModel? serviceDetailsModelObj;

  @override
  List<Object?> get props => [
        serviceDetailsModelObj,
      ];
  ServiceDetailsState copyWith({ServiceDetailsModel? serviceDetailsModelObj}) {
    return ServiceDetailsState(
      serviceDetailsModelObj:
          serviceDetailsModelObj ?? this.serviceDetailsModelObj,
    );
  }
}
