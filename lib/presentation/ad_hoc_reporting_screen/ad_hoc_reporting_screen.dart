import '../ad_hoc_reporting_screen/widgets/listgroup977_item_widget.dart';
import '../ad_hoc_reporting_screen/widgets/listtext1_item_widget.dart';
import 'bloc/ad_hoc_reporting_bloc.dart';
import 'models/ad_hoc_reporting_model.dart';
import 'models/listgroup977_item_model.dart';
import 'models/listtext1_item_model.dart';
import 'package:abhishek_s_application3/core/app_export.dart';
import 'package:abhishek_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:abhishek_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:abhishek_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AdHocReportingScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AdHocReportingBloc>(
      create: (context) => AdHocReportingBloc(AdHocReportingState(
        adHocReportingModelObj: AdHocReportingModel(),
      ))
        ..add(AdHocReportingInitialEvent()),
      child: AdHocReportingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        appBar: CustomAppBar(
          height: getVerticalSize(
            53,
          ),
          leadingWidth: 40,
          leading: AppbarImage(
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            svgPath: ImageConstant.imgMenu,
            margin: getMargin(
              left: 16,
              top: 12,
              bottom: 17,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "msg_ad_hoc_reporting".tr,
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgSearch,
              margin: getMargin(
                left: 16,
                top: 12,
                right: 16,
                bottom: 17,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 20,
            right: 16,
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  52,
                ),
                width: getHorizontalSize(
                  396,
                ),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: getPadding(
                          left: 73,
                          top: 13,
                          right: 73,
                          bottom: 13,
                        ),
                        decoration: AppDecoration.outlineBluegray100,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 4,
                              ),
                              child: Text(
                                "lbl_worker".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 54,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_volunteer".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16BlueA700,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 18,
                              ),
                              child: SizedBox(
                                width: getHorizontalSize(
                                  90,
                                ),
                                child: Divider(
                                  height: getVerticalSize(
                                    2,
                                  ),
                                  thickness: getVerticalSize(
                                    2,
                                  ),
                                  color: ColorConstant.blueA700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: getMargin(
                  top: 22,
                ),
                color: ColorConstant.whiteA700,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Container(
                  height: getVerticalSize(
                    224,
                  ),
                  width: getHorizontalSize(
                    396,
                  ),
                  padding: getPadding(
                    left: 16,
                    top: 17,
                    right: 16,
                    bottom: 17,
                  ),
                  decoration: AppDecoration.outlineGray70011.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: getPadding(
                            left: 1,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_08".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyMedium10,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: getPadding(
                                        top: 6,
                                        bottom: 5,
                                      ),
                                      child: Divider(
                                        height: getVerticalSize(
                                          1,
                                        ),
                                        thickness: getVerticalSize(
                                          1,
                                        ),
                                        color: ColorConstant.blueGray400,
                                        indent: getHorizontalSize(
                                          9,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 28,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "lbl_06".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyMedium10,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: getPadding(
                                          top: 6,
                                          bottom: 5,
                                        ),
                                        child: Divider(
                                          height: getVerticalSize(
                                            1,
                                          ),
                                          thickness: getVerticalSize(
                                            1,
                                          ),
                                          color: ColorConstant.blueGray400,
                                          indent: getHorizontalSize(
                                            9,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 28,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "lbl_04".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyMedium10,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: getPadding(
                                          top: 6,
                                          bottom: 5,
                                        ),
                                        child: Divider(
                                          height: getVerticalSize(
                                            1,
                                          ),
                                          thickness: getVerticalSize(
                                            1,
                                          ),
                                          color: ColorConstant.blueGray400,
                                          indent: getHorizontalSize(
                                            9,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 28,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "lbl_02".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyMedium10,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: getPadding(
                                          top: 6,
                                          bottom: 5,
                                        ),
                                        child: Divider(
                                          height: getVerticalSize(
                                            1,
                                          ),
                                          thickness: getVerticalSize(
                                            1,
                                          ),
                                          color: ColorConstant.blueGray400,
                                          indent: getHorizontalSize(
                                            10,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 28,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "lbl_00".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyMedium10,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: getPadding(
                                          top: 6,
                                          bottom: 5,
                                        ),
                                        child: Divider(
                                          height: getVerticalSize(
                                            1,
                                          ),
                                          thickness: getVerticalSize(
                                            1,
                                          ),
                                          color: ColorConstant.blueGray400,
                                          indent: getHorizontalSize(
                                            9,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: getPadding(
                            right: 8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  25,
                                ),
                                margin: getMargin(
                                  top: 63,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        97,
                                      ),
                                      width: getHorizontalSize(
                                        24,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.blueA700,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                          topRight: Radius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 9,
                                      ),
                                      child: Text(
                                        "lbl_08_21".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  28,
                                ),
                                margin: getMargin(
                                  left: 23,
                                  top: 22,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        138,
                                      ),
                                      width: getHorizontalSize(
                                        24,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.blueA700,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                          topRight: Radius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 9,
                                      ),
                                      child: Text(
                                        "lbl_08_22".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  28,
                                ),
                                margin: getMargin(
                                  left: 21,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        160,
                                      ),
                                      width: getHorizontalSize(
                                        24,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.blueA700,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                          topRight: Radius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 9,
                                      ),
                                      child: Text(
                                        "lbl_08_23".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  29,
                                ),
                                margin: getMargin(
                                  left: 21,
                                  top: 77,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        83,
                                      ),
                                      width: getHorizontalSize(
                                        24,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.blueA700,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                          topRight: Radius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 9,
                                      ),
                                      child: Text(
                                        "lbl_08_24".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  28,
                                ),
                                margin: getMargin(
                                  left: 20,
                                  top: 96,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        64,
                                      ),
                                      width: getHorizontalSize(
                                        24,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.blueA700,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                          topRight: Radius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 9,
                                      ),
                                      child: Text(
                                        "lbl_08_25".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  28,
                                ),
                                margin: getMargin(
                                  left: 21,
                                  top: 34,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        126,
                                      ),
                                      width: getHorizontalSize(
                                        24,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.blueA700,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                          topRight: Radius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 9,
                                      ),
                                      child: Text(
                                        "lbl_08_26".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  27,
                                ),
                                margin: getMargin(
                                  left: 22,
                                  top: 77,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        83,
                                      ),
                                      width: getHorizontalSize(
                                        24,
                                      ),
                                      decoration: BoxDecoration(
                                        color: ColorConstant.blueA700,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                          topRight: Radius.circular(
                                            getHorizontalSize(
                                              4,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 9,
                                      ),
                                      child: Text(
                                        "lbl_08_27".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: getVerticalSize(
                  165,
                ),
                child: BlocSelector<AdHocReportingBloc, AdHocReportingState,
                    AdHocReportingModel?>(
                  selector: (state) => state.adHocReportingModelObj,
                  builder: (context, adHocReportingModelObj) {
                    return ListView.separated(
                      padding: getPadding(
                        top: 16,
                        right: 1,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            16,
                          ),
                        );
                      },
                      itemCount:
                          adHocReportingModelObj?.listgroup977ItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        Listgroup977ItemModel model = adHocReportingModelObj
                                ?.listgroup977ItemList[index] ??
                            Listgroup977ItemModel();
                        return Listgroup977ItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 29,
                ),
                child: Text(
                  "lbl_report".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold18,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 21,
                ),
                child: BlocSelector<AdHocReportingBloc, AdHocReportingState,
                    AdHocReportingModel?>(
                  selector: (state) => state.adHocReportingModelObj,
                  builder: (context, adHocReportingModelObj) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: getPadding(
                            top: 18.5,
                            bottom: 18.5,
                          ),
                          child: SizedBox(
                            width: getHorizontalSize(
                              396,
                            ),
                            child: Divider(
                              height: getVerticalSize(
                                1,
                              ),
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: ColorConstant.blueGray100,
                            ),
                          ),
                        );
                      },
                      itemCount:
                          adHocReportingModelObj?.listtext1ItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        Listtext1ItemModel model =
                            adHocReportingModelObj?.listtext1ItemList[index] ??
                                Listtext1ItemModel();
                        return Listtext1ItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 17,
                  bottom: 5,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.blueGray100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
