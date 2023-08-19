// ignore_for_file: must_be_immutable

part of 'graphical_charts_bloc.dart';

@immutable
abstract class GraphicalChartsEvent extends Equatable {}

class GraphicalChartsInitialEvent extends GraphicalChartsEvent {
  @override
  List<Object?> get props => [];
}
