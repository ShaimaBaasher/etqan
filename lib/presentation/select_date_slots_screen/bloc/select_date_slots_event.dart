// ignore_for_file: must_be_immutable

part of 'select_date_slots_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SelectDateSlots widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SelectDateSlotsEvent extends Equatable {}

/// Event that is dispatched when the SelectDateSlots widget is first created.
class SelectDateSlotsInitialEvent extends SelectDateSlotsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends SelectDateSlotsEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
