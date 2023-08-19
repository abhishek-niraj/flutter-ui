// ignore_for_file: must_be_immutable

part of 'ad_hoc_reporting_bloc.dart';

@immutable
abstract class AdHocReportingEvent extends Equatable {}

class AdHocReportingInitialEvent extends AdHocReportingEvent {
  @override
  List<Object?> get props => [];
}
