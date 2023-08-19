// ignore_for_file: must_be_immutable

part of 'express_delivery_bloc.dart';

@immutable
abstract class ExpressDeliveryEvent extends Equatable {}

class ExpressDeliveryInitialEvent extends ExpressDeliveryEvent {
  @override
  List<Object?> get props => [];
}

///event for change switch
class ChangeSwitchEvent extends ExpressDeliveryEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
