// ignore_for_file: must_be_immutable

part of 'demo_account_bloc.dart';

@immutable
abstract class DemoAccountEvent extends Equatable {}

class DemoAccountInitialEvent extends DemoAccountEvent {
  @override
  List<Object?> get props => [];
}
