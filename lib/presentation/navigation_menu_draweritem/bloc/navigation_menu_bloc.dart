import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:abhishek_s_application3/presentation/navigation_menu_draweritem/models/navigation_menu_model.dart';
part 'navigation_menu_event.dart';
part 'navigation_menu_state.dart';

class NavigationMenuBloc
    extends Bloc<NavigationMenuEvent, NavigationMenuState> {
  NavigationMenuBloc(NavigationMenuState initialState) : super(initialState) {
    on<NavigationMenuInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NavigationMenuInitialEvent event,
    Emitter<NavigationMenuState> emit,
  ) async {
    emit(state.copyWith(
      toggleController: TextEditingController(),
    ));
  }
}
