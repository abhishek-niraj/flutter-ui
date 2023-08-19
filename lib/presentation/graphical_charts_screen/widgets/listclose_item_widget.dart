import '../models/listclose_item_model.dart';
import 'package:abhishek_s_application3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListcloseItemWidget extends StatelessWidget {
  ListcloseItemWidget(this.listcloseItemModelObj);

  ListcloseItemModel listcloseItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 16,
          ),
          padding: getPadding(
            all: 16,
          ),
          decoration: AppDecoration.outlineGray70011.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  top: 1,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgClose,
                      height: getSize(
                        20,
                      ),
                      width: getSize(
                        20,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                        top: 1,
                        bottom: 1,
                      ),
                      child: Text(
                        listcloseItemModelObj.bitcoinTxt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroyMedium14,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 8,
                ),
                child: Row(
                  children: [
                    Text(
                      listcloseItemModelObj.btcCounterTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroyBold20,
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowdown,
                      height: getSize(
                        16,
                      ),
                      width: getSize(
                        16,
                      ),
                      margin: getMargin(
                        top: 4,
                        bottom: 4,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                        bottom: 5,
                      ),
                      child: Text(
                        listcloseItemModelObj.sixHundredSeventyTxt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroyRegular12,
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgChartsmicroBlue501,
                height: getVerticalSize(
                  45,
                ),
                width: getHorizontalSize(
                  150,
                ),
                margin: getMargin(
                  top: 7,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
