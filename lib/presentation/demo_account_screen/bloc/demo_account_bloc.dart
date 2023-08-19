import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abhishek_s_application3/presentation/demo_account_screen/models/demo_account_model.dart';
part 'demo_account_event.dart';
part 'demo_account_state.dart';

class DemoAccountBloc extends Bloc<DemoAccountEvent, DemoAccountState> {
  DemoAccountBloc(DemoAccountState initialState) : super(initialState) {
    on<DemoAccountInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DemoAccountInitialEvent event,
    Emitter<DemoAccountState> emit,
  ) async {}
}
