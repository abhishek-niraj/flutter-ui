// ignore_for_file: must_be_immutable

part of 'express_delivery_bloc.dart';

class ExpressDeliveryState extends Equatable {
  ExpressDeliveryState({
    this.isSelectedSwitch = false,
    this.expressDeliveryModelObj,
  });

  ExpressDeliveryModel? expressDeliveryModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        expressDeliveryModelObj,
      ];
  ExpressDeliveryState copyWith({
    bool? isSelectedSwitch,
    ExpressDeliveryModel? expressDeliveryModelObj,
  }) {
    return ExpressDeliveryState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      expressDeliveryModelObj:
          expressDeliveryModelObj ?? this.expressDeliveryModelObj,
    );
  }
}
