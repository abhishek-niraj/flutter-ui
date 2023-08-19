import 'package:equatable/equatable.dart';
import 'listgroup524_item_model.dart';
import 'listtext_item_model.dart';

// ignore: must_be_immutable
class BaselineReportingModel extends Equatable {
  BaselineReportingModel(
      {this.listgroup524ItemList = const [], this.listtextItemList = const []});

  List<Listgroup524ItemModel> listgroup524ItemList;

  List<ListtextItemModel> listtextItemList;

  BaselineReportingModel copyWith(
      {List<Listgroup524ItemModel>? listgroup524ItemList,
      List<ListtextItemModel>? listtextItemList}) {
    return BaselineReportingModel(
      listgroup524ItemList: listgroup524ItemList ?? this.listgroup524ItemList,
      listtextItemList: listtextItemList ?? this.listtextItemList,
    );
  }

  @override
  List<Object?> get props => [listgroup524ItemList, listtextItemList];
}
