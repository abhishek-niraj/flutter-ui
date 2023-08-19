// ignore_for_file: must_be_immutable

part of 'navigation_menu_bloc.dart';

@immutable
abstract class NavigationMenuEvent extends Equatable {}

class NavigationMenuInitialEvent extends NavigationMenuEvent {
  @override
  List<Object?> get props => [];
}
