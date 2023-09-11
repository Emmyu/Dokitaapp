import 'controller/payment_done_controller.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PaymentDoneScreen extends GetWidget<PaymentDoneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 34,
            top: 112,
            right: 34,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: getSize(
                    100,
                  ),
                  width: getSize(
                    100,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.blueGray100,
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: getMargin(
                  top: 23,
                ),
                color: ColorConstant.blue500,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder86,
                ),
                child: Container(
                  height: getSize(
                    172,
                  ),
                  width: getSize(
                    172,
                  ),
                  padding: getPadding(
                    left: 50,
                    top: 56,
                    right: 50,
                    bottom: 56,
                  ),
                  decoration: AppDecoration.fillBlue500.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder86,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgCheckmarkWhiteA700,
                        height: getVerticalSize(
                          59,
                        ),
                        width: getHorizontalSize(
                          70,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  247,
                ),
                margin: getMargin(
                  left: 30,
                  top: 25,
                  right: 30,
                  bottom: 5,
                ),
                child: Text(
                  "msg_order_completed".tr,
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtPoppinsRegular16Gray5001,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomButton(
          height: getVerticalSize(
            56,
          ),
          text: "lbl_payment_done".tr,
          margin: getMargin(
            left: 25,
            right: 24,
            bottom: 36,
          ),
        ),
      ),
    );
  }
}
