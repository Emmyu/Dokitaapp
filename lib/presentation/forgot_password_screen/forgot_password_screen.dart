import 'controller/forgot_password_controller.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/core/utils/validation_functions.dart';
import 'package:dokita_app/widgets/app_bar/appbar_image.dart';
import 'package:dokita_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:dokita_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dokita_app/widgets/custom_button.dart';
import 'package:dokita_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
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
                    onTap: naivigatebacktosignuppage),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_forgot_password".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 25, top: 18, right: 25, bottom: 18),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: getHorizontalSize(312),
                              margin: getMargin(left: 2, right: 10),
                              child: Text("msg_we_need_your_registration".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular16)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.emailController,
                              hintText: "lbl_xxxxx_gmail_com".tr,
                              margin: getMargin(top: 73),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomButton(
                              height: getVerticalSize(52),
                              text: "lbl_send_code".tr,
                              margin: getMargin(top: 18, bottom: 5),
                              fontStyle: ButtonFontStyle.PoppinsMedium15)
                        ])))));
  }

  naivigatebacktosignuppage() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}
