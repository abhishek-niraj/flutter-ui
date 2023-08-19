// ignore_for_file: must_be_immutable

part of 'inventory_trend_analysis_bloc.dart';

class InventoryTrendAnalysisState extends Equatable {
  InventoryTrendAnalysisState({this.inventoryTrendAnalysisModelObj});

  InventoryTrendAnalysisModel? inventoryTrendAnalysisModelObj;

  @override
  List<Object?> get props => [
        inventoryTrendAnalysisModelObj,
      ];
  InventoryTrendAnalysisState copyWith(
      {InventoryTrendAnalysisModel? inventoryTrendAnalysisModelObj}) {
    return InventoryTrendAnalysisState(
      inventoryTrendAnalysisModelObj:
          inventoryTrendAnalysisModelObj ?? this.inventoryTrendAnalysisModelObj,
    );
  }
}
