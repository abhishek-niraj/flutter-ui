// ignore_for_file: must_be_immutable

part of 'demo_account_bloc.dart';

class DemoAccountState extends Equatable {
  DemoAccountState({this.demoAccountModelObj});

  DemoAccountModel? demoAccountModelObj;

  @override
  List<Object?> get props => [
        demoAccountModelObj,
      ];
  DemoAccountState copyWith({DemoAccountModel? demoAccountModelObj}) {
    return DemoAccountState(
      demoAccountModelObj: demoAccountModelObj ?? this.demoAccountModelObj,
    );
  }
}
