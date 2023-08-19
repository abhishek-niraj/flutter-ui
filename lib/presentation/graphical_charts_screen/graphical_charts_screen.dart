import '../graphical_charts_screen/widgets/listclose_item_widget.dart';
import '../graphical_charts_screen/widgets/listsync_item_widget.dart';
import 'bloc/graphical_charts_bloc.dart';
import 'models/graphical_charts_model.dart';
import 'models/listclose_item_model.dart';
import 'models/listsync_item_model.dart';
import 'package:abhishek_s_application3/core/app_export.dart';
import 'package:abhishek_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:abhishek_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:abhishek_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class GraphicalChartsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<GraphicalChartsBloc>(
      create: (context) => GraphicalChartsBloc(GraphicalChartsState(
        graphicalChartsModelObj: GraphicalChartsModel(),
      ))
        ..add(GraphicalChartsInitialEvent()),
      child: GraphicalChartsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        appBar: CustomAppBar(
          height: getVerticalSize(
            49,
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
              bottom: 13,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_home".tr,
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 16,
                top: 12,
                right: 16,
                bottom: 13,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 9,
            bottom: 9,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 17,
                ),
                child: Text(
                  "lbl_total_balance".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyMedium14,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 13,
                ),
                child: Row(
                  children: [
                    Text(
                      "lbl_40_241_45".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroyBold36,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 18,
                        bottom: 6,
                      ),
                      child: Text(
                        "lbl_4368_78".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroyMedium16Green600,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: getVerticalSize(
                    169,
                  ),
                  child: BlocSelector<GraphicalChartsBloc, GraphicalChartsState,
                      GraphicalChartsModel?>(
                    selector: (state) => state.graphicalChartsModelObj,
                    builder: (context, graphicalChartsModelObj) {
                      return ListView.separated(
                        padding: getPadding(
                          left: 16,
                          top: 30,
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
                            graphicalChartsModelObj?.listcloseItemList.length ??
                                0,
                        itemBuilder: (context, index) {
                          ListcloseItemModel model = graphicalChartsModelObj
                                  ?.listcloseItemList[index] ??
                              ListcloseItemModel();
                          return ListcloseItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 27,
                ),
                child: Text(
                  "msg_recent_transaction".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold18,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 16,
                    top: 24,
                    right: 16,
                  ),
                  child: BlocSelector<GraphicalChartsBloc, GraphicalChartsState,
                      GraphicalChartsModel?>(
                    selector: (state) => state.graphicalChartsModelObj,
                    builder: (context, graphicalChartsModelObj) {
                      return ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              22,
                            ),
                          );
                        },
                        itemCount:
                            graphicalChartsModelObj?.listsyncItemList.length ??
                                0,
                        itemBuilder: (context, index) {
                          ListsyncItemModel model = graphicalChartsModelObj
                                  ?.listsyncItemList[index] ??
                              ListsyncItemModel();
                          return ListsyncItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
