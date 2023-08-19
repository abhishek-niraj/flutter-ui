// ignore_for_file: must_be_immutable

part of 'performance_tracker_bloc.dart';

@immutable
abstract class PerformanceTrackerEvent extends Equatable {}

class PerformanceTrackerInitialEvent extends PerformanceTrackerEvent {
  @override
  List<Object?> get props => [];
}
