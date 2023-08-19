import 'package:equatable/equatable.dart';
import 'listitemcounter_item_model.dart';

// ignore: must_be_immutable
class SalesReportingModel extends Equatable {
  SalesReportingModel({this.listitemcounterItemList = const []});

  List<ListitemcounterItemModel> listitemcounterItemList;

  SalesReportingModel copyWith(
      {List<ListitemcounterItemModel>? listitemcounterItemList}) {
    return SalesReportingModel(
      listitemcounterItemList:
          listitemcounterItemList ?? this.listitemcounterItemList,
    );
  }

  @override
  List<Object?> get props => [listitemcounterItemList];
}
