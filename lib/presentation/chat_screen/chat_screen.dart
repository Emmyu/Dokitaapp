import 'controller/chat_controller.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/widgets/app_bar/appbar_image.dart';
import 'package:dokita_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dokita_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChatScreen extends GetWidget<ChatController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 70,
                leading: AppbarImage(
                    height: getSize(45),
                    width: getSize(45),
                    svgPath: ImageConstant.imgArrowleftWhiteA700,
                    margin: getMargin(left: 25, top: 4, bottom: 6),
                    onTap: onTapArrowleft10),
                title: Padding(
                    padding: getPadding(left: 24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(children: [
                            Container(
                                margin: getMargin(bottom: 1),
                                decoration: AppDecoration.fillGray400.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder21),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgShutterstock1544x45,
                                          height: getVerticalSize(44),
                                          width: getHorizontalSize(45),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(22)),
                                          margin: getMargin(top: 1))
                                    ])),
                            Padding(
                                padding: getPadding(left: 14),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text("lbl_dr_kawsar".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular18Bluegray900)),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(right: 45),
                                              child: Text("lbl_online".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular15Blue500)))
                                    ]))
                          ])
                        ])),
                actions: [
                  AppbarImage(
                      height: getSize(18),
                      width: getSize(18),
                      svgPath: ImageConstant.imgCall,
                      margin: getMargin(left: 25, top: 18, right: 19)),
                  AppbarImage(
                      height: getVerticalSize(12),
                      width: getHorizontalSize(17),
                      svgPath: ImageConstant.imgVideocamera,
                      margin:
                          getMargin(left: 16, top: 20, right: 44, bottom: 3))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 23, right: 24, bottom: 23),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_yesterday".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular10)),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(top: 36),
                                    color: ColorConstant.gray400,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder18),
                                    child: Container(
                                        height: getSize(37),
                                        width: getSize(37),
                                        decoration: AppDecoration.fillGray400
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder18),
                                        child: Stack(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgShutterstock1535x37,
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(37),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(18)),
                                              alignment: Alignment.center)
                                        ]))),
                                Container(
                                    padding: getPadding(
                                        left: 12,
                                        top: 13,
                                        right: 12,
                                        bottom: 13),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL301),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(249),
                                              margin:
                                                  getMargin(left: 4, top: 3),
                                              child: Text(
                                                  "msg_hi_kawsar_i_am".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular14))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(top: 4),
                          child: Text("lbl_18_27".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12Gray500)),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: getPadding(
                                              left: 23,
                                              top: 19,
                                              right: 23,
                                              bottom: 19),
                                          decoration: AppDecoration.fillBlue500
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL302),
                                          child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgGroup230,
                                                    height: getVerticalSize(35),
                                                    width:
                                                        getHorizontalSize(181)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 7,
                                                        top: 5,
                                                        right: 16,
                                                        bottom: 4),
                                                    child: Text("lbl_0_37".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular16WhiteA700))
                                              ])),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text("lbl_18_27".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtNunitoRegular12))
                                    ]),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(top: 40, bottom: 21),
                                    color: ColorConstant.blue500,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder18),
                                    child: Container(
                                        height: getSize(33),
                                        width: getSize(33),
                                        decoration: AppDecoration.fillBlue500
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder18),
                                        child: Stack(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgLogo11,
                                              height: getSize(33),
                                              width: getSize(33),
                                              alignment: Alignment.center)
                                        ])))
                              ])),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(top: 36),
                                    color: ColorConstant.gray400,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder18),
                                    child: Container(
                                        height: getSize(37),
                                        width: getSize(37),
                                        decoration: AppDecoration.fillGray400
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder18),
                                        child: Stack(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgShutterstock1535x37,
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(37),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(18)),
                                              alignment: Alignment.center)
                                        ]))),
                                Container(
                                    padding: getPadding(
                                        left: 12,
                                        top: 13,
                                        right: 12,
                                        bottom: 13),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL301),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(249),
                                              margin:
                                                  getMargin(left: 4, top: 3),
                                              child: Text(
                                                  "msg_hi_kawsar_i_am".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular14))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(top: 4),
                          child: Text("lbl_18_27".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12Gray500)),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomTextFormField(
                                    width: getHorizontalSize(283),
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.groupFortyFourController,
                                    hintText: "msg_hi_don_t_worry".tr,
                                    variant: TextFormFieldVariant.FillBlue500,
                                    shape: TextFormFieldShape.CustomBorderTL30,
                                    fontStyle:
                                        TextFormFieldFontStyle.PoppinsRegular14,
                                    textInputAction: TextInputAction.done,
                                    maxLines: 3),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(top: 40),
                                    color: ColorConstant.blue500,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder18),
                                    child: Container(
                                        height: getSize(33),
                                        width: getSize(33),
                                        decoration: AppDecoration.fillBlue500
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder18),
                                        child: Stack(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgLogo11,
                                              height: getSize(33),
                                              width: getSize(33),
                                              alignment: Alignment.center)
                                        ])))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 4),
                              child: Text("lbl_18_27".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular12Gray500))),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(top: 36),
                                    color: ColorConstant.gray400,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder18),
                                    child: Container(
                                        height: getSize(37),
                                        width: getSize(37),
                                        decoration: AppDecoration.fillGray400
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder18),
                                        child: Stack(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgShutterstock1535x37,
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(37),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(18)),
                                              alignment: Alignment.center)
                                        ]))),
                                Container(
                                    padding: getPadding(
                                        left: 12,
                                        top: 13,
                                        right: 12,
                                        bottom: 13),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL301),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(249),
                                              margin:
                                                  getMargin(left: 4, top: 3),
                                              child: Text(
                                                  "msg_hi_kawsar_i_am".tr,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular14))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(top: 4),
                          child: Text("lbl_18_27".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12Gray500)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 9, bottom: 5),
                              child: Row(children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.gray400,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder18),
                                    child: Container(
                                        height: getSize(37),
                                        width: getSize(37),
                                        decoration: AppDecoration.fillGray400
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder18),
                                        child: Stack(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgShutterstock1535x37,
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(37),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(18)),
                                              alignment: Alignment.center)
                                        ]))),
                                Padding(
                                    padding: getPadding(
                                        left: 11, top: 10, bottom: 6),
                                    child: Text("msg_dr_kawsar_is_typing".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular14Gray500))
                              ])))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 25, right: 25, bottom: 21),
                padding: getPadding(left: 23, top: 15, right: 23, bottom: 15),
                decoration: AppDecoration.fillBlue500
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder18),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgGroup239,
                          height: getVerticalSize(22),
                          width: getHorizontalSize(278))
                    ]))));
  }

  onTapArrowleft10() {
    Get.back();
  }
}
