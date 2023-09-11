import 'controller/incoming_call_controller.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/widgets/app_bar/appbar_image.dart';
import 'package:dokita_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:dokita_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dokita_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class IncomingCallScreen extends GetWidget<IncomingCallController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue500,
            body: Container(
                width: double.maxFinite,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(top: 51, bottom: 51),
                    decoration: AppDecoration.fillGray50.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL40),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomAppBar(
                              height: getVerticalSize(45),
                              leadingWidth: 70,
                              leading: AppbarImage(
                                  height: getSize(45),
                                  width: getSize(45),
                                  svgPath: ImageConstant.imgArrowleftWhiteA700,
                                  margin: getMargin(left: 25),
                                  onTap: onTapArrowleft9),
                              centerTitle: true,
                              title: AppbarSubtitle1(
                                  text: "lbl_incoming_call".tr)),
                          Spacer(),
                          CustomImageView(
                              svgPath: ImageConstant.imgPhoto,
                              height: getSize(204),
                              width: getSize(204)),
                          Padding(
                              padding: getPadding(top: 27),
                              child: Text("lbl_calling".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsRegular15Bluegray900)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 112, bottom: 110),
                                  child: Text("lbl_customer".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular20)))
                        ]))),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 76, right: 76, bottom: 27),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomIconButton(
                      height: 50,
                      width: 50,
                      variant: IconButtonVariant.FillWhiteA70033,
                      padding: IconButtonPadding.PaddingAll15,
                      child: CustomImageView(svgPath: ImageConstant.imgVector)),
                  CustomIconButton(
                      height: 50,
                      width: 50,
                      margin: getMargin(left: 35),
                      variant: IconButtonVariant.FillRed400,
                      child:
                          CustomImageView(svgPath: ImageConstant.imgDashboard)),
                  CustomIconButton(
                      height: 50,
                      width: 50,
                      margin: getMargin(left: 35),
                      variant: IconButtonVariant.FillWhiteA70033,
                      padding: IconButtonPadding.PaddingAll15,
                      child: CustomImageView(
                          svgPath: ImageConstant.imgVolumeWhiteA700))
                ]))));
  }

  onTapArrowleft9() {
    Get.back();
  }
}
