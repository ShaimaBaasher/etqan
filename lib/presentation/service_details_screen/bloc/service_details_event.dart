// ignore_for_file: must_be_immutable

part of 'service_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ServiceDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ServiceDetailsEvent extends Equatable {}

/// Event that is dispatched when the ServiceDetails widget is first created.
class ServiceDetailsInitialEvent extends ServiceDetailsEvent {
  @override
  List<Object?> get props => [];
}
