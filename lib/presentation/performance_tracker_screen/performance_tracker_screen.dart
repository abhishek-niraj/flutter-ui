import 'bloc/performance_tracker_bloc.dart';
import 'models/performance_tracker_model.dart';
import 'package:abhishek_s_application3/core/app_export.dart';
import 'package:abhishek_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:abhishek_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:abhishek_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PerformanceTrackerScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<PerformanceTrackerBloc>(
        create: (context) => PerformanceTrackerBloc(PerformanceTrackerState(
            performanceTrackerModelObj: PerformanceTrackerModel()))
          ..add(PerformanceTrackerInitialEvent()),
        child: PerformanceTrackerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PerformanceTrackerBloc, PerformanceTrackerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray50,
              appBar: CustomAppBar(
                  height: getVerticalSize(49),
                  leadingWidth: 40,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, top: 12, bottom: 13),
                      onTap: () {
                        onTapArrowleft5(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_performance".tr)),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 24, bottom: 24),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse5150x150,
                            height: getSize(150),
                            width: getSize(150),
                            radius:
                                BorderRadius.circular(getHorizontalSize(75))),
                        Padding(
                            padding: getPadding(top: 19),
                            child: Text("lbl_danial_sams".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyBold18BlueA700)),
                        Padding(
                            padding: getPadding(top: 6),
                            child: Text("lbl_san_francisco".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16)),
                        Padding(
                            padding: getPadding(left: 16, top: 34, right: 16),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 33, bottom: 29),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_performance".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtGilroySemiBold18Bluegray900),
                                            Container(
                                                width: getHorizontalSize(180),
                                                margin: getMargin(top: 13),
                                                child: Text(
                                                    "msg_you_have_successfully"
                                                        .tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyRegular14Bluegray400))
                                          ])),
                                  Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      color: ColorConstant.whiteA700,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                      child: Container(
                                          height: getSize(162),
                                          width: getSize(162),
                                          padding: getPadding(all: 11),
                                          decoration: AppDecoration
                                              .fillWhiteA700
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        height: getSize(138),
                                                        width: getSize(138),
                                                        child: CircularProgressIndicator(
                                                            value: 0.5,
                                                            backgroundColor:
                                                                ColorConstant
                                                                    .gray4004c,
                                                            color: ColorConstant
                                                                .blueA700))),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        height: getSize(134),
                                                        width: getSize(134),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Container(
                                                                      height:
                                                                          getSize(
                                                                              134),
                                                                      width: getSize(
                                                                          134),
                                                                      child: CircularProgressIndicator(
                                                                          value:
                                                                              0.5,
                                                                          backgroundColor: ColorConstant
                                                                              .gray4004c,
                                                                          color:
                                                                              ColorConstant.blueA700))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Text(
                                                                      "lbl_87_00"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRobotoBlack1418))
                                                            ])))
                                              ])))
                                ])),
                        Padding(
                            padding: getPadding(left: 16, top: 39, right: 16),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("msg_total_working_days".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtGilroySemiBold18Bluegray90001),
                                        Padding(
                                            padding: getPadding(top: 7),
                                            child: Row(children: [
                                              Text("lbl_225".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtGilroyBold28),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 15,
                                                      top: 8,
                                                      bottom: 6),
                                                  child: Text("lbl_days".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGilroyMedium16Bluegray900))
                                            ])),
                                        Padding(
                                            padding: getPadding(top: 7),
                                            child: Row(children: [
                                              Text("lbl_48".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratMedium14),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 7, top: 1),
                                                  child: Text(
                                                      "msg_higher_than_colleagues"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGilroyMedium14Gray400))
                                            ]))
                                      ]),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgGroup185,
                                      height: getVerticalSize(84),
                                      width: getHorizontalSize(170),
                                      margin: getMargin(top: 1, bottom: 5))
                                ])),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 16, top: 44),
                                child: Text("lbl_team_included".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtGilroySemiBold18Bluegray900))),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                margin: getMargin(left: 75, top: 27, bottom: 5),
                                padding: getPadding(
                                    left: 16, top: 19, right: 16, bottom: 19),
                                decoration: AppDecoration.outlineGray60019
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL50),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          margin: getMargin(right: 131),
                                          decoration:
                                              AppDecoration.outlineGray600191,
                                          child: Row(children: [
                                            Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.all(0),
                                                color: ColorConstant.whiteA700,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        color: ColorConstant
                                                            .yellow9003f,
                                                        width:
                                                            getHorizontalSize(
                                                                1)),
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                                child: Container(
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    padding: getPadding(
                                                        top: 2, bottom: 2),
                                                    decoration: AppDecoration
                                                        .outlineYellow9003f
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder12),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgEllipse5418x18,
                                                          height: getSize(18),
                                                          width: getSize(18),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      9)),
                                                          alignment: Alignment
                                                              .centerLeft)
                                                    ]))),
                                            Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: getMargin(left: 4),
                                                color: ColorConstant.whiteA700,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        color: ColorConstant
                                                            .yellow9003f,
                                                        width:
                                                            getHorizontalSize(
                                                                1)),
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                                child: Container(
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    padding: getPadding(all: 2),
                                                    decoration: AppDecoration
                                                        .outlineYellow9003f
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder12),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgEllipse2718x18,
                                                          height: getSize(18),
                                                          width: getSize(18),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      9)),
                                                          alignment:
                                                              Alignment.center)
                                                    ]))),
                                            Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: getMargin(left: 4),
                                                color: ColorConstant.whiteA700,
                                                shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                        color: ColorConstant
                                                            .yellow9003f,
                                                        width:
                                                            getHorizontalSize(
                                                                1)),
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                                child: Container(
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    padding: getPadding(all: 2),
                                                    decoration: AppDecoration
                                                        .outlineYellow9003f
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder12),
                                                    child: Stack(children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgEllipse28,
                                                          height: getSize(18),
                                                          width: getSize(18),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      9)),
                                                          alignment:
                                                              Alignment.center)
                                                    ]))),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgEllipse6624x24,
                                                height: getSize(24),
                                                width: getSize(24),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(12)),
                                                margin: getMargin(left: 4)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 14,
                                                    top: 4,
                                                    bottom: 4),
                                                child: Text("lbl_10_0thers".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRubikMedium12))
                                          ]))
                                    ])))
                      ]))));
    });
  }

  onTapArrowleft5(BuildContext context) {
    NavigatorService.goBack();
  }
}
