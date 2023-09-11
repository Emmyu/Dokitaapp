import 'controller/verification_code_controller.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/widgets/app_bar/appbar_image.dart';
import 'package:dokita_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:dokita_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationCodeScreen extends GetWidget<VerificationCodeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(57),
                leadingWidth: 70,
                leading: AppbarImage(
                    height: getSize(45),
                    width: getSize(45),
                    svgPath: ImageConstant.imgArrowleftWhiteA700,
                    margin: getMargin(left: 25, top: 5, bottom: 5),
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: AppbarSubtitle1(text: "msg_verification_code".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 25, top: 19, right: 25, bottom: 19),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_enter_the_code_we".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular16Bluegray900),
                      Padding(
                          padding: getPadding(top: 94),
                          child: Obx(() => PinCodeTextField(
                              appContext: context,
                              controller: controller.otpController.value,
                              length: 4,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {}))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 8, right: 6),
                              child: Text("lbl_resent_code".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular16Blue500))),
                      GestureDetector(
                          onTap: () {
                            navigatetoresetpasswordscreen();
                          },
                          child: Container(
                              width: getHorizontalSize(325),
                              margin: getMargin(top: 95, bottom: 5),
                              padding: getPadding(
                                  left: 30, top: 13, right: 122, bottom: 13),
                              decoration: AppDecoration.txtFillBlue500.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtRoundedBorder10),
                              child: Text("lbl_confirm".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium15)))
                    ]))));
  }

  navigatetoresetpasswordscreen() {
    Get.toNamed(AppRoutes.resetPasswordScreen);
  }

  onTapArrowleft1() {
    Get.back();
  }
}
