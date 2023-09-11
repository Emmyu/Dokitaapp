import 'controller/payment_controller.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/widgets/app_bar/appbar_image.dart';
import 'package:dokita_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:dokita_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dokita_app/widgets/custom_button.dart';
import 'package:dokita_app/widgets/custom_radio_button.dart';
import 'package:dokita_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends GetWidget<PaymentController> {
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
                    margin: getMargin(left: 25, top: 5, bottom: 5),
                    onTap: onTapArrowleft8),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_payment".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 66, right: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(88),
                          width: getHorizontalSize(326),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin: getMargin(right: 1),
                                    padding: getPadding(top: 8, bottom: 8),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                              height: getVerticalSize(63),
                                              width: getHorizontalSize(64),
                                              margin:
                                                  getMargin(top: 3, bottom: 4),
                                              child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    61),
                                                            width: getHorizontalSize(
                                                                62),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .blue500,
                                                                borderRadius: BorderRadius.only(
                                                                    topLeft: Radius.circular(
                                                                        getHorizontalSize(
                                                                            20)),
                                                                    bottomLeft:
                                                                        Radius.circular(getHorizontalSize(
                                                                            20)),
                                                                    bottomRight:
                                                                        Radius.circular(getHorizontalSize(20)))))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: Container(
                                                            height: getSize(12),
                                                            width: getSize(12),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgGroup69,
                                                                      height:
                                                                          getSize(
                                                                              12),
                                                                      width:
                                                                          getSize(
                                                                              12),
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Container(
                                                                          height: getSize(
                                                                              8),
                                                                          width: getSize(
                                                                              8),
                                                                          decoration: BoxDecoration(
                                                                              color: ColorConstant.teal400,
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(4)))))
                                                                ]))),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgShutterstock15,
                                                        height:
                                                            getVerticalSize(60),
                                                        width:
                                                            getHorizontalSize(
                                                                62),
                                                        radius: BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    getHorizontalSize(
                                                                        20)),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    getHorizontalSize(
                                                                        20)),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    getHorizontalSize(
                                                                        20))),
                                                        alignment:
                                                            Alignment.center)
                                                  ])),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "msg_dr_mahbuba_islam"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium16),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 1),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "lbl_cardiologist"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .gray500,
                                                                          fontSize: getFontSize(
                                                                              10),
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w400)),
                                                                  TextSpan(
                                                                      text: "msg_cumilla_madical"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .gray500,
                                                                          fontSize: getFontSize(
                                                                              10),
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w300))
                                                                ]),
                                                            textAlign: TextAlign
                                                                .left)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 6),
                                                        child: Row(children: [
                                                          Container(
                                                              margin: getMargin(
                                                                  top: 1,
                                                                  bottom: 2),
                                                              padding:
                                                                  getPadding(
                                                                      left: 8,
                                                                      top: 2,
                                                                      right: 8,
                                                                      bottom:
                                                                          2),
                                                              decoration: AppDecoration
                                                                  .fillBlue50014
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder4),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                1),
                                                                        child: Text(
                                                                            "msg_10_20_am_12_30"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsRegular9))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      24),
                                                              width:
                                                                  getHorizontalSize(
                                                                      20),
                                                              margin: getMargin(
                                                                  left: 106),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getSize(20),
                                                                            width: getSize(20),
                                                                            decoration: BoxDecoration(color: ColorConstant.blue500, borderRadius: BorderRadius.circular(getHorizontalSize(10))))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(left: 4),
                                                                            child: Text("lbl".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium16WhiteA700)))
                                                                  ]))
                                                        ]))
                                                  ]))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin: getMargin(left: 1),
                                    padding: getPadding(top: 8, bottom: 8),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getVerticalSize(63),
                                              width: getHorizontalSize(64),
                                              margin:
                                                  getMargin(top: 3, bottom: 4),
                                              child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    61),
                                                            width: getHorizontalSize(
                                                                62),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .blue500,
                                                                borderRadius: BorderRadius.only(
                                                                    topLeft: Radius.circular(
                                                                        getHorizontalSize(
                                                                            20)),
                                                                    bottomLeft:
                                                                        Radius.circular(getHorizontalSize(
                                                                            20)),
                                                                    bottomRight:
                                                                        Radius.circular(getHorizontalSize(20)))))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: Container(
                                                            height: getSize(12),
                                                            width: getSize(12),
                                                            child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgGroup69,
                                                                      height:
                                                                          getSize(
                                                                              12),
                                                                      width:
                                                                          getSize(
                                                                              12),
                                                                      alignment:
                                                                          Alignment
                                                                              .center),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Container(
                                                                          height: getSize(
                                                                              8),
                                                                          width: getSize(
                                                                              8),
                                                                          decoration: BoxDecoration(
                                                                              color: ColorConstant.teal400,
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(4)))))
                                                                ]))),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgShutterstock1560x62,
                                                        height:
                                                            getVerticalSize(60),
                                                        width:
                                                            getHorizontalSize(
                                                                62),
                                                        radius: BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    getHorizontalSize(
                                                                        20)),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    getHorizontalSize(
                                                                        20)),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    getHorizontalSize(
                                                                        20))),
                                                        alignment:
                                                            Alignment.center)
                                                  ])),
                                          Padding(
                                              padding: getPadding(bottom: 3),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "msg_dr_kawsar_ahmed"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium16),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 1),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "lbl_cardiologist"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .gray500,
                                                                          fontSize: getFontSize(
                                                                              10),
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w400)),
                                                                  TextSpan(
                                                                      text: "msg_cumilla_madical"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .gray500,
                                                                          fontSize: getFontSize(
                                                                              10),
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w300))
                                                                ]),
                                                            textAlign: TextAlign
                                                                .left)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 8),
                                                        child: Row(children: [
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      96),
                                                              padding:
                                                                  getPadding(
                                                                      left: 7,
                                                                      top: 1,
                                                                      right: 7,
                                                                      bottom:
                                                                          1),
                                                              decoration: AppDecoration
                                                                  .txtFillBlue50014
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .txtRoundedBorder4),
                                                              child: Text(
                                                                  "lbl_got_appointment"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsRegular9)),
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      37),
                                                              margin:
                                                                  getMargin(
                                                                      left: 89),
                                                              padding:
                                                                  getPadding(
                                                                      left: 7,
                                                                      top: 1,
                                                                      right: 7,
                                                                      bottom:
                                                                          1),
                                                              decoration: AppDecoration
                                                                  .txtFillBlue500
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .txtRoundedBorder4),
                                                              child: Text(
                                                                  "lbl_20".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium12WhiteA700))
                                                        ]))
                                                  ]))
                                        ])))
                          ])),
                      Container(
                          margin: getMargin(left: 1, top: 64, right: 1),
                          padding: getPadding(top: 15, bottom: 15),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder13),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgVolume,
                                    height: getVerticalSize(19),
                                    width: getHorizontalSize(32),
                                    margin: getMargin(
                                        left: 15, top: 18, bottom: 18)),
                                Padding(
                                    padding: getPadding(
                                        left: 20,
                                        top: 15,
                                        right: 21,
                                        bottom: 16),
                                    child: CustomRadioButton(
                                        width: getHorizontalSize(236),
                                        text: "lbl_credit_card".tr,
                                        iconSize: getHorizontalSize(20),
                                        value: "lbl_credit_card".tr,
                                        groupValue: controller.radioGroup.value,
                                        margin: getMargin(
                                            left: 20,
                                            top: 15,
                                            right: 21,
                                            bottom: 16),
                                        fontStyle:
                                            RadioFontStyle.PoppinsRegular16,
                                        isRightCheck: true,
                                        onChange: (value) {
                                          controller.radioGroup.value = value;
                                        }))
                              ])),
                      Container(
                          margin: getMargin(left: 1, top: 16, right: 1),
                          padding: getPadding(
                              left: 19, top: 13, right: 19, bottom: 13),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder13),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgGoogle,
                                    height: getSize(23),
                                    width: getSize(23),
                                    margin: getMargin(top: 2, bottom: 2),
                                    onTap: () {
                                      onTapImgGoogle();
                                    }),
                                Padding(
                                    padding: getPadding(top: 4, right: 2),
                                    child: CustomRadioButton(
                                        width: getHorizontalSize(236),
                                        text: "lbl_google_pay".tr,
                                        value: "lbl_google_pay".tr,
                                        groupValue:
                                            controller.radioGroup1.value,
                                        margin: getMargin(top: 4, right: 2),
                                        fontStyle:
                                            RadioFontStyle.PoppinsRegular16,
                                        isRightCheck: true,
                                        onChange: (value) {
                                          controller.radioGroup1.value = value;
                                        }))
                              ])),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.applepayController,
                          hintText: "lbl_apple_pay".tr,
                          margin: getMargin(top: 16),
                          padding: TextFormFieldPadding.PaddingT16,
                          fontStyle: TextFormFieldFontStyle.PoppinsRegular16,
                          prefix: Container(
                              margin: getMargin(
                                  left: 21, top: 16, right: 27, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgVolumeGray50001)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 18, right: 21, bottom: 18),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgContrast)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.paypalController,
                          hintText: "lbl_paypal".tr,
                          margin: getMargin(top: 16, bottom: 5),
                          padding: TextFormFieldPadding.PaddingT16,
                          fontStyle: TextFormFieldFontStyle.PoppinsRegular16,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 21, top: 16, right: 26, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgMegaphone)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 18, right: 21, bottom: 18),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgContrast)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "lbl_payment".tr,
                margin: getMargin(left: 25, right: 24, bottom: 36))));
  }

  onTapImgGoogle() async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }

  onTapArrowleft8() {
    Get.back();
  }
}
