// ignore_for_file: must_be_immutable

part of 'sales_reporting_bloc.dart';

@immutable
abstract class SalesReportingEvent extends Equatable {}

class SalesReportingInitialEvent extends SalesReportingEvent {
  @override
  List<Object?> get props => [];
}
