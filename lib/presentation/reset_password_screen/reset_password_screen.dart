import 'controller/reset_password_controller.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/core/utils/validation_functions.dart';
import 'package:dokita_app/widgets/app_bar/appbar_image.dart';
import 'package:dokita_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:dokita_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dokita_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    onTap: onTapArrowleft2),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_reset_password".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 25, top: 19, right: 25, bottom: 19),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("msg_enter_a_new_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16Bluegray900),
                          Obx(() => CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.passwordController,
                              hintText: "lbl_new_password".tr,
                              margin: getMargin(top: 95),
                              padding: TextFormFieldPadding.PaddingT14,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 21,
                                          right: 20,
                                          bottom: 21),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.blueGray900),
                                      child: CustomImageView(
                                          svgPath: controller
                                                  .isShowPassword.value
                                              ? ImageConstant.imgCheckmark
                                              : ImageConstant.imgCheckmark))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(52)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: !controller.isShowPassword.value)),
                          Obx(() => CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.passwordOneController,
                              hintText: "msg_confirm_password".tr,
                              margin: getMargin(top: 20),
                              padding: TextFormFieldPadding.PaddingT14,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword1.value =
                                        !controller.isShowPassword1.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 21,
                                          right: 20,
                                          bottom: 21),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.blueGray900),
                                      child: CustomImageView(
                                          svgPath: controller
                                                  .isShowPassword1.value
                                              ? ImageConstant.imgCheckmark
                                              : ImageConstant.imgCheckmark))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(52)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText:
                                  !controller.isShowPassword1.value)),
                          Container(
                              width: getHorizontalSize(325),
                              margin: getMargin(top: 55, bottom: 5),
                              padding: getPadding(
                                  left: 30, top: 13, right: 122, bottom: 13),
                              decoration: AppDecoration.txtFillBlue500.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtRoundedBorder10),
                              child: Text("lbl_confirm".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium15))
                        ])))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
