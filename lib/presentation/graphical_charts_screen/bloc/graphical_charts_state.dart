// ignore_for_file: must_be_immutable

part of 'graphical_charts_bloc.dart';

class GraphicalChartsState extends Equatable {
  GraphicalChartsState({this.graphicalChartsModelObj});

  GraphicalChartsModel? graphicalChartsModelObj;

  @override
  List<Object?> get props => [
        graphicalChartsModelObj,
      ];
  GraphicalChartsState copyWith(
      {GraphicalChartsModel? graphicalChartsModelObj}) {
    return GraphicalChartsState(
      graphicalChartsModelObj:
          graphicalChartsModelObj ?? this.graphicalChartsModelObj,
    );
  }
}
