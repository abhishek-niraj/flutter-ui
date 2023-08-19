import 'package:equatable/equatable.dart';
import 'listclose_item_model.dart';
import 'listsync_item_model.dart';

// ignore: must_be_immutable
class GraphicalChartsModel extends Equatable {
  GraphicalChartsModel(
      {this.listcloseItemList = const [], this.listsyncItemList = const []});

  List<ListcloseItemModel> listcloseItemList;

  List<ListsyncItemModel> listsyncItemList;

  GraphicalChartsModel copyWith(
      {List<ListcloseItemModel>? listcloseItemList,
      List<ListsyncItemModel>? listsyncItemList}) {
    return GraphicalChartsModel(
      listcloseItemList: listcloseItemList ?? this.listcloseItemList,
      listsyncItemList: listsyncItemList ?? this.listsyncItemList,
    );
  }

  @override
  List<Object?> get props => [listcloseItemList, listsyncItemList];
}
