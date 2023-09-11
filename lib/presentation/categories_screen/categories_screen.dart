import 'controller/categories_controller.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/widgets/app_bar/appbar_image.dart';
import 'package:dokita_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:dokita_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dokita_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends GetWidget<CategoriesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 70,
                leading: AppbarImage(
                    height: getSize(45),
                    width: getSize(45),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 25, top: 5, bottom: 5)),
                centerTitle: true,
                title: AppbarSubtitle1(text: "msg_departments_categories".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 13, top: 14, right: 13, bottom: 14),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(256),
                          margin: getMargin(left: 14, right: 79),
                          child: Text("msg_what_do_you_want".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular25)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 5, right: 15),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage16,
                                        height: getVerticalSize(89),
                                        width: getHorizontalSize(143)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgImage1686x142,
                                        height: getVerticalSize(86),
                                        width: getHorizontalSize(142),
                                        margin: getMargin(bottom: 3))
                                  ]))),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage19,
                          height: getVerticalSize(98),
                          width: getHorizontalSize(175),
                          margin: getMargin(top: 29)),
                      Spacer(),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding:
                                  getPadding(left: 35, right: 6, bottom: 16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage21,
                                        height: getVerticalSize(124),
                                        width: getHorizontalSize(125),
                                        margin: getMargin(top: 18)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage22,
                                        height: getVerticalSize(115),
                                        width: getHorizontalSize(164),
                                        margin: getMargin(left: 19, bottom: 27))
                                  ])))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "lbl_continue".tr,
                margin: getMargin(left: 25, right: 24, bottom: 36),
                onTap: navigatetohomescreen)));
  }

  navigatetohomescreen() {
    Get.offNamed(AppRoutes.searchScreen);
  }
}
