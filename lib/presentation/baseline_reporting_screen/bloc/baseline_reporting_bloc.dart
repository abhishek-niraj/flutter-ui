import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listgroup524_item_model.dart';
import '../models/listtext_item_model.dart';
import 'package:abhishek_s_application3/presentation/baseline_reporting_screen/models/baseline_reporting_model.dart';
part 'baseline_reporting_event.dart';
part 'baseline_reporting_state.dart';

class BaselineReportingBloc
    extends Bloc<BaselineReportingEvent, BaselineReportingState> {
  BaselineReportingBloc(BaselineReportingState initialState)
      : super(initialState) {
    on<BaselineReportingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BaselineReportingInitialEvent event,
    Emitter<BaselineReportingState> emit,
  ) async {
    emit(state.copyWith(
        baselineReportingModelObj: state.baselineReportingModelObj?.copyWith(
            listgroup524ItemList: fillListgroup524ItemList(),
            listtextItemList: fillListtextItemList())));
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.demoAccountScreen,
      );
    });
  }

  List<Listgroup524ItemModel> fillListgroup524ItemList() {
    return List.generate(3, (index) => Listgroup524ItemModel());
  }

  List<ListtextItemModel> fillListtextItemList() {
    return List.generate(2, (index) => ListtextItemModel());
  }
}
