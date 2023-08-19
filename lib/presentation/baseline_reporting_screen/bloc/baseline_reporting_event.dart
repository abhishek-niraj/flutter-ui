// ignore_for_file: must_be_immutable

part of 'baseline_reporting_bloc.dart';

@immutable
abstract class BaselineReportingEvent extends Equatable {}

class BaselineReportingInitialEvent extends BaselineReportingEvent {
  @override
  List<Object?> get props => [];
}
