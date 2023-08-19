// ignore_for_file: must_be_immutable

part of 'inventory_trend_analysis_bloc.dart';

@immutable
abstract class InventoryTrendAnalysisEvent extends Equatable {}

class InventoryTrendAnalysisInitialEvent extends InventoryTrendAnalysisEvent {
  @override
  List<Object?> get props => [];
}
