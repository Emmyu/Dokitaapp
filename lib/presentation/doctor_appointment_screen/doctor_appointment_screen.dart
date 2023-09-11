import '../doctor_appointment_screen/widgets/listman_item_widget.dart';
import '../doctor_appointment_screen/widgets/listtime_item_widget.dart';
import 'controller/doctor_appointment_controller.dart';
import 'models/listman_item_model.dart';
import 'models/listtime_item_model.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/widgets/app_bar/appbar_image.dart';
import 'package:dokita_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:dokita_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dokita_app/widgets/custom_button.dart';
import 'package:dokita_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class DoctorAppointmentScreen extends GetWidget<DoctorAppointmentController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(86),
                leadingWidth: 76,
                leading: AppbarImage(
                    height: getVerticalSize(38),
                    width: getHorizontalSize(49),
                    svgPath: ImageConstant.imgArrowleftWhiteA700,
                    margin: getMargin(left: 27, bottom: 6),
                    onTap: onTapArrowleft6),
                title: AppbarSubtitle(
                    text: "lbl_doctor_detail".tr, margin: getMargin(left: 51))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 24, top: 17, right: 26),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(365),
                                  width: getHorizontalSize(356),
                                  margin: getMargin(left: 1),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("lbl_february".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular16Bluegray9001),
                                                  Container(
                                                      height:
                                                          getVerticalSize(64),
                                                      child: Obx(() =>
                                                          ListView.separated(
                                                              padding:
                                                                  getPadding(
                                                                      top: 7),
                                                              scrollDirection:
                                                                  Axis
                                                                      .horizontal,
                                                              separatorBuilder:
                                                                  (context,
                                                                      index) {
                                                                return SizedBox(
                                                                    height:
                                                                        getVerticalSize(
                                                                            10));
                                                              },
                                                              itemCount: controller
                                                                  .doctorAppointmentModelObj
                                                                  .value
                                                                  .listmanItemList
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                ListmanItemModel
                                                                    model =
                                                                    controller
                                                                        .doctorAppointmentModelObj
                                                                        .value
                                                                        .listmanItemList[index];
                                                                return ListmanItemWidget(
                                                                    model);
                                                              })))
                                                ])),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                                margin: getMargin(left: 42),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            ImageConstant
                                                                .imgGroup23),
                                                        fit: BoxFit.cover)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Card(
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          elevation: 0,
                                                          margin:
                                                              EdgeInsets.all(0),
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
                                                                        height: getVerticalSize(
                                                                            116),
                                                                        width: getHorizontalSize(
                                                                            112),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            13)),
                                                                        alignment:
                                                                            Alignment.center)
                                                                  ]))),
                                                      Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgFavorite,
                                                                      height:
                                                                          getVerticalSize(
                                                                              12),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              18),
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      margin: getMargin(
                                                                          right:
                                                                              3)),
                                                                  Container(
                                                                      height:
                                                                          getSize(
                                                                              42),
                                                                      width:
                                                                          getSize(
                                                                              42),
                                                                      margin: getMargin(
                                                                          top:
                                                                              18),
                                                                      decoration: BoxDecoration(
                                                                          color: ColorConstant
                                                                              .blue400,
                                                                          borderRadius:
                                                                              BorderRadius.circular(getHorizontalSize(21)))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              2),
                                                                      child: Text(
                                                                          "lbl_150"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtPoppinsMedium15)),
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
                                                                        left:
                                                                            42,
                                                                        top: 30,
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
                                                                          child:
                                                                              CustomImageView(svgPath: ImageConstant.imgSettingsWhiteA700)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  4),
                                                                          child: Text(
                                                                              "lbl_10_years".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsMedium15)),
                                                                      Text(
                                                                          "lbl_experiance"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtNunitoSemiBold7)
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            42,
                                                                        top:
                                                                            30),
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
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgStar1322x22, height: getSize(22), width: getSize(22), radius: BorderRadius.circular(getHorizontalSize(1)))
                                                                              ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  2),
                                                                          child: Text(
                                                                              "lbl_4_9".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsMedium15)),
                                                                      Text(
                                                                          "lbl_rating"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtPoppinsRegular7)
                                                                    ]))
                                                          ])
                                                    ])))
                                      ])),
                              Container(
                                  height: getVerticalSize(372),
                                  width: getHorizontalSize(327),
                                  margin: getMargin(left: 1, top: 21),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: getVerticalSize(308),
                                                width: getHorizontalSize(327),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 1,
                                                                      top: 73),
                                                              child: Text(
                                                                  "msg_fees_information"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsRegular16Bluegray9001))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                              margin: getMargin(
                                                                  top: 105,
                                                                  bottom: 146),
                                                              padding:
                                                                  getPadding(
                                                                      left: 27,
                                                                      top: 9,
                                                                      right: 27,
                                                                      bottom:
                                                                          9),
                                                              decoration: AppDecoration
                                                                  .fillWhiteA700
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder7),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                40),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Text("lbl_voice_call".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium14),
                                                                              Padding(padding: getPadding(top: 2), child: Text("msg_can_make_a_voice".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight10))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                7,
                                                                            bottom:
                                                                                4),
                                                                        child: Text(
                                                                            "lbl_102"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsMedium17))
                                                                  ]))),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgGroup114,
                                                          height:
                                                              getVerticalSize(
                                                                  156),
                                                          width:
                                                              getHorizontalSize(
                                                                  44),
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin: getMargin(
                                                              left: 8)),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      57),
                                                              width:
                                                                  getHorizontalSize(
                                                                      327),
                                                              margin: getMargin(
                                                                  bottom: 73),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .whiteA700,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(7))))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              margin: getMargin(
                                                                  top: 251),
                                                              padding:
                                                                  getPadding(
                                                                      left: 23,
                                                                      top: 9,
                                                                      right: 23,
                                                                      bottom:
                                                                          9),
                                                              decoration: AppDecoration
                                                                  .fillWhiteA700
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder7),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                              "lbl_video_call".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsMedium14),
                                                                          Padding(
                                                                              padding: getPadding(top: 2),
                                                                              child: Text("msg_can_make_a_video".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsLight10))
                                                                        ]),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                40,
                                                                            top:
                                                                                7,
                                                                            bottom:
                                                                                4),
                                                                        child: Text(
                                                                            "lbl_20"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsMedium17))
                                                                  ]))),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgGroup112,
                                                          height:
                                                              getVerticalSize(
                                                                  180),
                                                          width:
                                                              getHorizontalSize(
                                                                  45),
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin: getMargin(
                                                              left: 8,
                                                              bottom: 6)),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 21),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "lbl_afternoon_slots"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular16Bluegray9001),
                                                                    Padding(
                                                                        padding:
                                                                            getPadding(top: 9),
                                                                        child: Obx(() => ListView.separated(
                                                                            physics: NeverScrollableScrollPhysics(),
                                                                            shrinkWrap: true,
                                                                            separatorBuilder: (context, index) {
                                                                              return SizedBox(height: getVerticalSize(11));
                                                                            },
                                                                            itemCount: controller.doctorAppointmentModelObj.value.listtimeItemList.length,
                                                                            itemBuilder: (context, index) {
                                                                              ListtimeItemModel model = controller.doctorAppointmentModelObj.value.listtimeItemList[index];
                                                                              return ListtimeItemWidget(model);
                                                                            })))
                                                                  ])))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(right: 1),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "lbl_morning_slots"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular16Bluegray9001),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 7),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Container(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            102),
                                                                    padding: getPadding(
                                                                        left:
                                                                            25,
                                                                        top: 7,
                                                                        right:
                                                                            25,
                                                                        bottom:
                                                                            7),
                                                                    decoration: AppDecoration
                                                                        .txtFillWhiteA700
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .txtCustomBorderTL10),
                                                                    child: Text(
                                                                        "lbl_10_30_am"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular12Gray500)),
                                                                Container(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            102),
                                                                    padding: getPadding(
                                                                        left:
                                                                            27,
                                                                        top: 7,
                                                                        right:
                                                                            27,
                                                                        bottom:
                                                                            7),
                                                                    decoration: AppDecoration
                                                                        .txtFillWhiteA700
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .txtCustomBorderTL10),
                                                                    child: Text(
                                                                        "lbl_11_00_am"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular12Gray500)),
                                                                Container(
                                                                    width:
                                                                        getHorizontalSize(
                                                                            102),
                                                                    padding: getPadding(
                                                                        left:
                                                                            27,
                                                                        top: 7,
                                                                        right:
                                                                            27,
                                                                        bottom:
                                                                            7),
                                                                    decoration: AppDecoration
                                                                        .txtFillWhiteA700
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .txtCustomBorderTL10),
                                                                    child: Text(
                                                                        "lbl_11_30_am"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsRegular12Gray500))
                                                              ]))
                                                    ])))
                                      ])),
                              CustomButton(
                                  height: getVerticalSize(56),
                                  text: "msg_request_for_appointment".tr,
                                  margin: getMargin(top: 155, right: 31),
                                  padding: ButtonPadding.PaddingAll18,
                                  fontStyle: ButtonFontStyle.NunitoSemiBold17)
                            ]))))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
