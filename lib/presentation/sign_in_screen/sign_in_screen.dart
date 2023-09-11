import 'controller/sign_in_controller.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/core/utils/validation_functions.dart';
import 'package:dokita_app/widgets/app_bar/appbar_image.dart';
import 'package:dokita_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:dokita_app/widgets/app_bar/custom_app_bar.dart';
import 'package:dokita_app/widgets/custom_button.dart';
import 'package:dokita_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:dokita_app/data/models/login/post_login_req.dart';
import 'package:dokita_app/data/models/login/post_login_resp.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
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
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 25, top: 5, bottom: 5)),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_let_s_sign_in".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 25, top: 40, right: 25, bottom: 40),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("lbl_welcome".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium30),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.nameController,
                              hintText: "lbl_name".tr,
                              margin: getMargin(top: 85),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          Obx(() => CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.passwordController,
                              hintText: "lbl_password".tr,
                              margin: getMargin(top: 20),
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
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    navigtetoforgotpasswordscreen();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 9),
                                      child: Text("lbl_forgot_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtPoppinsMedium13)))),
                          CustomButton(
                              height: getVerticalSize(52),
                              text: "lbl_sign_in".tr,
                              margin: getMargin(top: 77),
                              fontStyle: ButtonFontStyle.PoppinsMedium15,
                              onTap: onTapsignin),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    nevigatebacktosignup();
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 13, bottom: 5),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "msg_don_t_have_an_account2"
                                                        .tr,
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

  navigtetoforgotpasswordscreen() {
    Get.toNamed(AppRoutes.forgotPasswordScreen);
  }

  Future<void> onTapsignin() async {
    if (_formKey.currentState!.validate()) {
      PostLoginReq postLoginReq = PostLoginReq(
        username: controller.nameController.text,
        password: controller.passwordController.text,
      );
      try {
        await controller.callCreateLogin(
          postLoginReq.toJson(),
        );
        _onOnTapsigninSuccess();
      } on PostLoginResp {
        _onOnTapsigninError();
      } on NoInternetException catch (e) {
        Get.rawSnackbar(message: e.toString());
      } catch (e) {
        //TODO: Handle generic errors
      }
    }
  }

  void _onOnTapsigninSuccess() {
    Get.offNamed(AppRoutes.categoriesScreen,
        arguments: {NavigationArgs.id: controller.postLoginResp.data!.id!});
  }

  void _onOnTapsigninError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: 'Invalid Login  ',
        middleText: controller.postLoginResp.message!.toString());
  }

  nevigatebacktosignup() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}
