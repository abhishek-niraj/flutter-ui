import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abhishek_s_application3/presentation/performance_tracker_screen/models/performance_tracker_model.dart';
part 'performance_tracker_event.dart';
part 'performance_tracker_state.dart';

class PerformanceTrackerBloc
    extends Bloc<PerformanceTrackerEvent, PerformanceTrackerState> {
  PerformanceTrackerBloc(PerformanceTrackerState initialState)
      : super(initialState) {
    on<PerformanceTrackerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PerformanceTrackerInitialEvent event,
    Emitter<PerformanceTrackerState> emit,
  ) async {}
}
