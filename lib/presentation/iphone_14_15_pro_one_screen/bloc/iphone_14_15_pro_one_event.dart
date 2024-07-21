// ignore_for_file: must_be_immutable

part of 'iphone_14_15_pro_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1415ProOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone1415ProOneEvent extends Equatable {}

/// Event that is dispatched when the Iphone1415ProOne widget is first created.
class Iphone1415ProOneInitialEvent extends Iphone1415ProOneEvent {
  @override
  List<Object?> get props => [];
}
