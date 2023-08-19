// ignore_for_file: must_be_immutable

part of 'performance_tracker_bloc.dart';

class PerformanceTrackerState extends Equatable {
  PerformanceTrackerState({this.performanceTrackerModelObj});

  PerformanceTrackerModel? performanceTrackerModelObj;

  @override
  List<Object?> get props => [
        performanceTrackerModelObj,
      ];
  PerformanceTrackerState copyWith(
      {PerformanceTrackerModel? performanceTrackerModelObj}) {
    return PerformanceTrackerState(
      performanceTrackerModelObj:
          performanceTrackerModelObj ?? this.performanceTrackerModelObj,
    );
  }
}
