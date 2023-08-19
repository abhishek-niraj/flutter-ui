// ignore_for_file: must_be_immutable

part of 'ad_hoc_reporting_bloc.dart';

class AdHocReportingState extends Equatable {
  AdHocReportingState({this.adHocReportingModelObj});

  AdHocReportingModel? adHocReportingModelObj;

  @override
  List<Object?> get props => [
        adHocReportingModelObj,
      ];
  AdHocReportingState copyWith({AdHocReportingModel? adHocReportingModelObj}) {
    return AdHocReportingState(
      adHocReportingModelObj:
          adHocReportingModelObj ?? this.adHocReportingModelObj,
    );
  }
}
