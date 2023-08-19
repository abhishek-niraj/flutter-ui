import 'package:equatable/equatable.dart';
import 'listgroup977_item_model.dart';
import 'listtext1_item_model.dart';

// ignore: must_be_immutable
class AdHocReportingModel extends Equatable {
  AdHocReportingModel(
      {this.listgroup977ItemList = const [],
      this.listtext1ItemList = const []});

  List<Listgroup977ItemModel> listgroup977ItemList;

  List<Listtext1ItemModel> listtext1ItemList;

  AdHocReportingModel copyWith(
      {List<Listgroup977ItemModel>? listgroup977ItemList,
      List<Listtext1ItemModel>? listtext1ItemList}) {
    return AdHocReportingModel(
      listgroup977ItemList: listgroup977ItemList ?? this.listgroup977ItemList,
      listtext1ItemList: listtext1ItemList ?? this.listtext1ItemList,
    );
  }

  @override
  List<Object?> get props => [listgroup977ItemList, listtext1ItemList];
}
