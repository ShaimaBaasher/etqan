// ignore_for_file: must_be_immutable

part of 'iphone_14_15_pro_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1415ProThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone1415ProThreeEvent extends Equatable {}

/// Event that is dispatched when the Iphone1415ProThree widget is first created.
class Iphone1415ProThreeInitialEvent extends Iphone1415ProThreeEvent {
  @override
  List<Object?> get props => [];
}
