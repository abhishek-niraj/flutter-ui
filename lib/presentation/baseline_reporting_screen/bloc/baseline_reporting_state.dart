// ignore_for_file: must_be_immutable

part of 'baseline_reporting_bloc.dart';

class BaselineReportingState extends Equatable {
  BaselineReportingState({this.baselineReportingModelObj});

  BaselineReportingModel? baselineReportingModelObj;

  @override
  List<Object?> get props => [
        baselineReportingModelObj,
      ];
  BaselineReportingState copyWith(
      {BaselineReportingModel? baselineReportingModelObj}) {
    return BaselineReportingState(
      baselineReportingModelObj:
          baselineReportingModelObj ?? this.baselineReportingModelObj,
    );
  }
}
