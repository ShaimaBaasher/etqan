// ignore_for_file: must_be_immutable

part of 'iphone_14_15_pro_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1415ProTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone1415ProTwoEvent extends Equatable {}

/// Event that is dispatched when the Iphone1415ProTwo widget is first created.
class Iphone1415ProTwoInitialEvent extends Iphone1415ProTwoEvent {
  @override
  List<Object?> get props => [];
}
