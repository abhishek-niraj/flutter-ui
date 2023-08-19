import '../models/listitemcounter_item_model.dart';
import 'package:abhishek_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListitemcounterItemWidget extends StatelessWidget {
  ListitemcounterItemWidget(this.listitemcounterItemModelObj);

  ListitemcounterItemModel listitemcounterItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          listitemcounterItemModelObj.itemCounterTxt,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtGilroySemiBold16Black900,
        ),
        Spacer(),
        CustomImageView(
          svgPath: ImageConstant.imgChartsmicro,
          height: getVerticalSize(
            15,
          ),
          width: getHorizontalSize(
            83,
          ),
          margin: getMargin(
            top: 3,
            bottom: 2,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 22,
          ),
          child: Text(
            listitemcounterItemModelObj.priceTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtGilroySemiBold16BlueA700,
          ),
        ),
      ],
    );
  }
}
