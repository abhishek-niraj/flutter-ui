import 'bloc/express_delivery_bloc.dart';
import 'models/express_delivery_model.dart';
import 'package:abhishek_s_application3/core/app_export.dart';
import 'package:abhishek_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:abhishek_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:abhishek_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:abhishek_s_application3/widgets/custom_button.dart';
import 'package:abhishek_s_application3/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class ExpressDeliveryScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ExpressDeliveryBloc>(
        create: (context) => ExpressDeliveryBloc(ExpressDeliveryState(
            expressDeliveryModelObj: ExpressDeliveryModel()))
          ..add(ExpressDeliveryInitialEvent()),
        child: ExpressDeliveryScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 17),
                    onTap: () {
                      onTapArrowleft2(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_shopping_cart".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("lbl_your_order".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyBold18)),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgUnsplashenrurz62wui50x50,
                                    height: getSize(86),
                                    width: getSize(86),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(3))),
                                Container(
                                    width: getHorizontalSize(160),
                                    margin:
                                        getMargin(left: 12, top: 8, bottom: 4),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("msg_logo_printed_t_shirt".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtGilroySemiBold16),
                                          Padding(
                                              padding: getPadding(top: 8),
                                              child: Text(
                                                  "lbl_prada".tr.toUpperCase(),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium12)),
                                          Padding(
                                              padding: getPadding(top: 6),
                                              child: Row(children: [
                                                Container(
                                                    width:
                                                        getHorizontalSize(38),
                                                    padding: getPadding(
                                                        top: 4, bottom: 4),
                                                    decoration: AppDecoration
                                                        .txtFillWhiteA700
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder3),
                                                    child: Text("lbl_size_m".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyMedium12)),
                                                Container(
                                                    width:
                                                        getHorizontalSize(47),
                                                    margin: getMargin(left: 16),
                                                    padding: getPadding(
                                                        top: 4, bottom: 4),
                                                    decoration: AppDecoration
                                                        .fillGray5001
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder3),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text("lbl_color".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGilroyMedium12),
                                                          Container(
                                                              height:
                                                                  getSize(10),
                                                              width:
                                                                  getSize(10),
                                                              margin: getMargin(
                                                                  left: 4,
                                                                  top: 2,
                                                                  bottom: 2),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .deepPurple50,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              5)),
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .blueGray400,
                                                                      width: getHorizontalSize(
                                                                          1))))
                                                        ])),
                                                Container(
                                                    width:
                                                        getHorizontalSize(43),
                                                    margin: getMargin(left: 16),
                                                    padding: getPadding(
                                                        top: 4, bottom: 4),
                                                    decoration: AppDecoration
                                                        .txtFillGray5001
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder3),
                                                    child: Text("lbl_qty_04".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyMedium12))
                                              ]))
                                        ])),
                                Spacer(),
                                Container(
                                    width: getHorizontalSize(46),
                                    margin: getMargin(top: 38, bottom: 7),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_10_50".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroyMedium10Bluegray400
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .lineThrough)),
                                          Padding(
                                              padding: getPadding(top: 6),
                                              child: Text("lbl_5_50".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyBold18BlueA700))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("msg_express_delivery".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900)),
                                BlocSelector<ExpressDeliveryBloc,
                                        ExpressDeliveryState, bool?>(
                                    selector: (state) => state.isSelectedSwitch,
                                    builder: (context, isSelectedSwitch) {
                                      return CustomSwitch(
                                          value: isSelectedSwitch,
                                          onChanged: (value) {
                                            context
                                                .read<ExpressDeliveryBloc>()
                                                .add(ChangeSwitchEvent(
                                                    value: value));
                                          });
                                    })
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 20, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("msg_delivery_charges".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyRegular16)),
                                Text("lbl_2_50".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyBold16)
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 22, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("msg_delivery_date_and".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyRegular16),
                                Text("msg_april_30_2022".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroyMedium16Bluegray900)
                              ])),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100)),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_billing_address".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyBold18Bluegray900)),
                                Padding(
                                    padding: getPadding(bottom: 3),
                                    child: Text("lbl_change".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtGilroyBold16BlueA700))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 9, right: 114),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgHome,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(bottom: 27)),
                                    Expanded(
                                        child: Container(
                                            width: getHorizontalSize(249),
                                            margin: getMargin(left: 8, top: 2),
                                            child: Text(
                                                "msg_4517_washington".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtGilroyRegular16)))
                                  ]))),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 21),
                              child: Text("lbl_payment_details".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyBold18))),
                      Padding(
                          padding: getPadding(left: 16, top: 12, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_total_mrp".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroyRegular16Bluegray700),
                                Text("lbl_5_50".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyBold16)
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 15, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("lbl_texes_charges".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyRegular16Bluegray700)),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_0_00".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16Bluegray900))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 14, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("msg_delivery_charges".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyRegular16Bluegray700)),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_2_50".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium16Bluegray900))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 14, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_discount".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroyRegular16Bluegray700),
                                Text("lbl_2_00".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroyMedium16Bluegray900)
                              ])),
                      Container(
                          margin: getMargin(top: 19, bottom: 5),
                          padding: getPadding(
                              left: 16, top: 7, right: 16, bottom: 7),
                          decoration: AppDecoration.fillBlue50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("lbl_grand_total".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroySemiBold18Indigo900),
                                Text("lbl_10_002".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyBold18BlueA700)
                              ]))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(50),
                text: "msg_proceed_to_checkout".tr,
                margin: getMargin(left: 16, right: 16, bottom: 47),
                variant: ButtonVariant.FillBlueA700,
                padding: ButtonPadding.PaddingAll14,
                fontStyle: ButtonFontStyle.GilroyMedium16)));
  }

  onTapArrowleft2(BuildContext context) {
    NavigatorService.goBack();
  }
}
