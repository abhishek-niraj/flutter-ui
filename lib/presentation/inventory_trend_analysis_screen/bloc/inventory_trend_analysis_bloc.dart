import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abhishek_s_application3/presentation/inventory_trend_analysis_screen/models/inventory_trend_analysis_model.dart';
part 'inventory_trend_analysis_event.dart';
part 'inventory_trend_analysis_state.dart';

class InventoryTrendAnalysisBloc
    extends Bloc<InventoryTrendAnalysisEvent, InventoryTrendAnalysisState> {
  InventoryTrendAnalysisBloc(InventoryTrendAnalysisState initialState)
      : super(initialState) {
    on<InventoryTrendAnalysisInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InventoryTrendAnalysisInitialEvent event,
    Emitter<InventoryTrendAnalysisState> emit,
  ) async {}
}
