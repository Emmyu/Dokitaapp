import 'controller/sign_up_controller.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/core/utils/validation_functions.dart';
import 'package:dokita_app/widgets/app_bar/appbar_image.dart';
import 'package:dokita_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:dokita_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dokita_app/widgets/custom_button.dart';
import 'package:dokita_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:dokita_app/data/models/register/post_register_req.dart';
import 'package:dokita_app/data/models/register/post_register_resp.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
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
                    onTap: onTapArrowleft),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_let_s_sign_up".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 24, top: 44, right: 24, bottom: 44),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: getHorizontalSize(135),
                              child: Text("lbl_create_account".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtPoppinsMedium30Bluegray900)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.nameController,
                              hintText: "lbl_name".tr,
                              margin: getMargin(left: 1, top: 48),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.emailController,
                              hintText: "lbl_email".tr,
                              margin: getMargin(left: 1, top: 20),
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          Obx(() => CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.passwordController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(left: 1, top: 20),
                              padding: TextFormFieldPadding.PaddingT14,
                              textInputAction: TextInputAction.done,
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
                          CustomButton(
                              height: getVerticalSize(52),
                              text: "lbl_sign_up".tr,
                              margin: getMargin(left: 1, top: 35),
                              fontStyle: ButtonFontStyle.PoppinsMedium15,
                              onTap: Register_user),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    navigatetomain_catergories();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 13, bottom: 5),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "msg_already_have_an2".tr,
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .blueGray900,
                                                    fontSize: getFontSize(13),
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            TextSpan(
                                                text: "lbl_sign_in".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.blue500,
                                                    fontSize: getFontSize(13),
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w500))
                                          ]),
                                          textAlign: TextAlign.left))))
                        ])))));
  }

  Future<void> Register_user() async {
    if (_formKey.currentState!.validate()) {
      PostRegisterReq postRegisterReq = PostRegisterReq(
        password: controller.passwordController.text,
        email: controller.emailController.text,
        name: controller.nameController.text,
      );
      try {
        await controller.callCreateRegister(
          postRegisterReq.toJson(),
        );
        _onRegister_userSuccess();
      } on PostRegisterResp {
        _onRegister_userError();
      } on NoInternetException catch (e) {
        Get.rawSnackbar(message: e.toString());
      } catch (e) {
        //TODO: Handle generic errors
      }
    }
  }

  void _onRegister_userSuccess() {}
  void _onRegister_userError() {}
  navigatetomain_catergories() {
    Get.offNamed(AppRoutes.signInScreen);
  }

  onTapArrowleft() {
    Get.back();
  }
}
