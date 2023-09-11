import '../search_screen/widgets/listrectangleseventythree1_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/listrectangleseventythree1_item_model.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/widgets/app_bar/appbar_image.dart';
import 'package:dokita_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:dokita_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends GetWidget<SearchController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(57),
                leadingWidth: 70,
                leading: AppbarImage(
                    height: getSize(45),
                    width: getSize(45),
                    svgPath: ImageConstant.imgArrowleftWhiteA700,
                    margin: getMargin(left: 25, top: 5, bottom: 5),
                    onTap: onTapArrowleft4),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_search".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 25, top: 32, right: 25, bottom: 32),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(all: 5),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.img,
                                    height: getVerticalSize(21),
                                    width: getHorizontalSize(17),
                                    margin:
                                        getMargin(left: 12, top: 8, bottom: 8)),
                                Padding(
                                    padding:
                                        getPadding(left: 12, top: 8, bottom: 6),
                                    child: Text("lbl_cordiologist".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular15)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgSettings,
                                    height: getSize(38),
                                    width: getSize(38))
                              ])),
                      Padding(
                          padding: getPadding(top: 20),
                          child: Text("lbl_recent_search".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16Bluegray900)),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(13));
                              },
                              itemCount: controller.searchModelObj.value
                                  .listrectangleseventythree1ItemList.length,
                              itemBuilder: (context, index) {
                                Listrectangleseventythree1ItemModel model =
                                    controller.searchModelObj.value
                                            .listrectangleseventythree1ItemList[
                                        index];
                                return Listrectangleseventythree1ItemWidget(
                                    model);
                              })))
                    ]))));
  }

  onTapArrowleft4() {
    Get.back();
  }
}
