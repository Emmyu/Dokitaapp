import 'controller/appointment_created_controller.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/widgets/app_bar/appbar_image.dart';
import 'package:dokita_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:dokita_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dokita_app/widgets/custom_button.dart';
import 'package:dokita_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class AppointmentCreatedScreen extends GetWidget<AppointmentCreatedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                height: getVerticalSize(761),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: getVerticalSize(395),
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 94, right: 96),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                            .txtPoppinsMedium20),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 2),
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
                                                                              FontWeight.w400))
                                                                ]),
                                                            textAlign: TextAlign
                                                                .left)),
                                                    RatingBar.builder(
                                                        initialRating: 5,
                                                        minRating: 0,
                                                        direction:
                                                            Axis.horizontal,
                                                        allowHalfRating: false,
                                                        itemSize:
                                                            getVerticalSize(19),
                                                        itemCount: 5,
                                                        updateOnDrag: true,
                                                        onRatingUpdate:
                                                            (rating) {},
                                                        itemBuilder:
                                                            (context, _) {
                                                          return Icon(
                                                              Icons.star,
                                                              color:
                                                                  ColorConstant
                                                                      .amber500);
                                                        })
                                                  ]))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              padding:
                                                  getPadding(top: 6, bottom: 6),
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: fs.Svg(
                                                          ImageConstant
                                                              .imgGroup5),
                                                      fit: BoxFit.cover)),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomAppBar(
                                                        height:
                                                            getVerticalSize(45),
                                                        leadingWidth: 70,
                                                        leading: AppbarImage(
                                                            height: getSize(45),
                                                            width: getSize(45),
                                                            svgPath: ImageConstant
                                                                .imgArrowleftWhiteA700,
                                                            margin: getMargin(
                                                                left: 25),
                                                            onTap:
                                                                onTapArrowleft7),
                                                        centerTitle: true,
                                                        title: AppbarSubtitle(
                                                            text:
                                                                "lbl_doctor_detail"
                                                                    .tr)),
                                                    Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        elevation: 0,
                                                        margin: getMargin(
                                                            left: 125, top: 8),
                                                        shape: RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                color: ColorConstant
                                                                    .whiteA700,
                                                                width:
                                                                    getHorizontalSize(
                                                                        3)),
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder13),
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    121),
                                                            width:
                                                                getHorizontalSize(
                                                                    112),
                                                            decoration: AppDecoration
                                                                .outlineWhiteA700
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder13),
                                                            child: Stack(
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgShutterstock15116x112,
                                                                      height:
                                                                          getVerticalSize(
                                                                              116),
                                                                      width: getHorizontalSize(
                                                                          112),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              13)),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ]))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 67,
                                                            top: 28,
                                                            bottom: 77),
                                                        child: Row(children: [
                                                          Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomIconButton(
                                                                    height: 42,
                                                                    width: 42,
                                                                    shape: IconButtonShape
                                                                        .CircleBorder21,
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgFavorite)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                2),
                                                                    child: Text(
                                                                        "lbl_150"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium15)),
                                                                Text(
                                                                    "lbl_patient"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular7)
                                                              ]),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 42,
                                                                      bottom:
                                                                          1),
                                                              child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    CustomIconButton(
                                                                        height:
                                                                            42,
                                                                        width:
                                                                            42,
                                                                        shape: IconButtonShape
                                                                            .CircleBorder21,
                                                                        child: CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgSettingsWhiteA700)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                4),
                                                                        child: Text(
                                                                            "lbl_10_years"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsMedium15)),
                                                                    Text(
                                                                        "lbl_experiance"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtNunitoSemiBold7)
                                                                  ])),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 42),
                                                              child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                        padding: getPadding(
                                                                            all:
                                                                                10),
                                                                        decoration: AppDecoration.fillBlue400.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .circleBorder21),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgStar131, height: getSize(22), width: getSize(22), radius: BorderRadius.circular(getHorizontalSize(1)))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                2),
                                                                        child: Text(
                                                                            "lbl_4_9"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsMedium15)),
                                                                    Text(
                                                                        "lbl_rating"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular7)
                                                                  ]))
                                                        ]))
                                                  ])))
                                    ])),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(left: 25, top: 16),
                                    child: Text("lbl_about_doctor".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular16Bluegray9001))),
                            Container(
                                width: getHorizontalSize(325),
                                margin: getMargin(left: 25, top: 9, right: 25),
                                child: Text("msg_dr_kawsar_ahmed2".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular14)),
                            Container(
                                height: getVerticalSize(122),
                                width: getHorizontalSize(326),
                                margin: getMargin(top: 15),
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                          "lbl_recent_comments"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular16Bluegray9001),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 4,
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_2_hour_ago"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsLight13))
                                                    ]),
                                                Padding(
                                                    padding: getPadding(top: 9),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                              height:
                                                                  getSize(41),
                                                              width:
                                                                  getSize(41),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgSubtractLime800,
                                                                        height: getVerticalSize(
                                                                            38),
                                                                        width: getHorizontalSize(
                                                                            30),
                                                                        alignment:
                                                                            Alignment.bottomRight),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgImage13,
                                                                        height: getSize(
                                                                            38),
                                                                        width: getSize(
                                                                            38),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            19)),
                                                                        alignment:
                                                                            Alignment.topLeft)
                                                                  ])),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 7,
                                                                      top: 10,
                                                                      bottom:
                                                                          12),
                                                              child: RatingBar
                                                                  .builder(
                                                                      initialRating:
                                                                          5,
                                                                      minRating:
                                                                          0,
                                                                      direction:
                                                                          Axis
                                                                              .horizontal,
                                                                      allowHalfRating:
                                                                          false,
                                                                      itemSize:
                                                                          getVerticalSize(
                                                                              19),
                                                                      itemCount:
                                                                          5,
                                                                      updateOnDrag:
                                                                          true,
                                                                      onRatingUpdate:
                                                                          (rating) {},
                                                                      itemBuilder:
                                                                          (context,
                                                                              _) {
                                                                        return Icon(
                                                                            Icons
                                                                                .star,
                                                                            color:
                                                                                ColorConstant.amber500);
                                                                      }))
                                                        ]))
                                              ])),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              padding: getPadding(
                                                  left: 91,
                                                  top: 13,
                                                  right: 91,
                                                  bottom: 13),
                                              decoration: AppDecoration
                                                  .fillBlue500
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 3),
                                                        child: Text(
                                                            "lbl_get_appointment"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular17))
                                                  ])))
                                    ]))
                          ])),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: getPadding(
                              left: 24, top: 48, right: 24, bottom: 48),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup2),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgThumbsup,
                                    height: getVerticalSize(81),
                                    width: getHorizontalSize(70)),
                                Container(
                                    width: getHorizontalSize(230),
                                    margin:
                                        getMargin(left: 48, top: 55, right: 49),
                                    child: Text("msg_thanks_you_your".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .txtPoppinsMedium17Bluegray900)),
                                Container(
                                    width: getHorizontalSize(278),
                                    margin:
                                        getMargin(left: 24, top: 9, right: 25),
                                    child: Text(
                                        "msg_you_booked_an_appoinment".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle
                                            .txtPoppinsRegular16Gray500)),
                                CustomButton(
                                    height: getVerticalSize(56),
                                    text: "msg_request_for_appointment".tr,
                                    margin: getMargin(top: 106))
                              ])))
                ]))));
  }

  onTapArrowleft7() {
    Get.back();
  }
}
