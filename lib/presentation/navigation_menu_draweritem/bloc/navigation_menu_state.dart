// ignore_for_file: must_be_immutable

part of 'navigation_menu_bloc.dart';

class NavigationMenuState extends Equatable {
  NavigationMenuState({
    this.toggleController,
    this.navigationMenuModelObj,
  });

  TextEditingController? toggleController;

  NavigationMenuModel? navigationMenuModelObj;

  @override
  List<Object?> get props => [
        toggleController,
        navigationMenuModelObj,
      ];
  NavigationMenuState copyWith({
    TextEditingController? toggleController,
    NavigationMenuModel? navigationMenuModelObj,
  }) {
    return NavigationMenuState(
      toggleController: toggleController ?? this.toggleController,
      navigationMenuModelObj:
          navigationMenuModelObj ?? this.navigationMenuModelObj,
    );
  }
}
