import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listitemcounter_item_model.dart';
import 'package:abhishek_s_application3/presentation/sales_reporting_screen/models/sales_reporting_model.dart';
part 'sales_reporting_event.dart';
part 'sales_reporting_state.dart';

class SalesReportingBloc
    extends Bloc<SalesReportingEvent, SalesReportingState> {
  SalesReportingBloc(SalesReportingState initialState) : super(initialState) {
    on<SalesReportingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SalesReportingInitialEvent event,
    Emitter<SalesReportingState> emit,
  ) async {
    emit(state.copyWith(
        salesReportingModelObj: state.salesReportingModelObj?.copyWith(
            listitemcounterItemList: fillListitemcounterItemList())));
  }

  List<ListitemcounterItemModel> fillListitemcounterItemList() {
    return List.generate(8, (index) => ListitemcounterItemModel());
  }
}
