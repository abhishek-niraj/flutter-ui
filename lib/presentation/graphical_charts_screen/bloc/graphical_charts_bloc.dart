import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listclose_item_model.dart';
import '../models/listsync_item_model.dart';
import 'package:abhishek_s_application3/presentation/graphical_charts_screen/models/graphical_charts_model.dart';
part 'graphical_charts_event.dart';
part 'graphical_charts_state.dart';

class GraphicalChartsBloc
    extends Bloc<GraphicalChartsEvent, GraphicalChartsState> {
  GraphicalChartsBloc(GraphicalChartsState initialState) : super(initialState) {
    on<GraphicalChartsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GraphicalChartsInitialEvent event,
    Emitter<GraphicalChartsState> emit,
  ) async {
    emit(state.copyWith(
        graphicalChartsModelObj: state.graphicalChartsModelObj?.copyWith(
      listcloseItemList: fillListcloseItemList(),
      listsyncItemList: fillListsyncItemList(),
    )));
  }

  List<ListcloseItemModel> fillListcloseItemList() {
    return List.generate(3, (index) => ListcloseItemModel());
  }

  List<ListsyncItemModel> fillListsyncItemList() {
    return List.generate(7, (index) => ListsyncItemModel());
  }
}
