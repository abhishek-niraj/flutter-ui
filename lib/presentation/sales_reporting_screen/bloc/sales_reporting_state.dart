// ignore_for_file: must_be_immutable

part of 'sales_reporting_bloc.dart';

class SalesReportingState extends Equatable {
  SalesReportingState({this.salesReportingModelObj});

  SalesReportingModel? salesReportingModelObj;

  @override
  List<Object?> get props => [
        salesReportingModelObj,
      ];
  SalesReportingState copyWith({SalesReportingModel? salesReportingModelObj}) {
    return SalesReportingState(
      salesReportingModelObj:
          salesReportingModelObj ?? this.salesReportingModelObj,
    );
  }
}
