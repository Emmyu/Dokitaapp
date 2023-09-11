import 'controller/video_call_controller.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class VideoCallScreen extends GetWidget<VideoCallController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blue500,
        body: Container(
          height: getVerticalSize(
            734,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgShutterstock15712x375,
                height: getVerticalSize(
                  712,
                ),
                width: getHorizontalSize(
                  375,
                ),
                radius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    getHorizontalSize(
                      40,
                    ),
                  ),
                  bottomRight: Radius.circular(
                    getHorizontalSize(
                      40,
                    ),
                  ),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: getMargin(
                    bottom: 5,
                  ),
                  padding: getPadding(
                    left: 25,
                    top: 10,
                    right: 25,
                    bottom: 10,
                  ),
                  decoration: AppDecoration.gradientGray40000Blue500,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(
                            top: 55,
                          ),
                          color: ColorConstant.whiteA7003f,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder13,
                          ),
                          child: Container(
                            height: getVerticalSize(
                              110,
                            ),
                            width: getHorizontalSize(
                              90,
                            ),
                            decoration: AppDecoration.fillWhiteA7003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder13,
                            ),
                            child: Stack(
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgImg20210709191611490,
                                  height: getVerticalSize(
                                    110,
                                  ),
                                  width: getHorizontalSize(
                                    90,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      15,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_15_18".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular15WhiteA700,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 88,
                          top: 1,
                        ),
                        child: Text(
                          "lbl_customer2".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular20WhiteA700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 76,
            right: 76,
            bottom: 27,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                height: 50,
                width: 50,
                variant: IconButtonVariant.FillWhiteA70033,
                padding: IconButtonPadding.PaddingAll15,
                child: CustomImageView(
                  svgPath: ImageConstant.imgVector,
                ),
              ),
              CustomIconButton(
                height: 50,
                width: 50,
                margin: getMargin(
                  left: 35,
                ),
                variant: IconButtonVariant.FillRed400,
                child: CustomImageView(
                  svgPath: ImageConstant.imgDashboard,
                ),
              ),
              CustomIconButton(
                height: 50,
                width: 50,
                margin: getMargin(
                  left: 35,
                ),
                variant: IconButtonVariant.FillWhiteA70033,
                padding: IconButtonPadding.PaddingAll15,
                child: CustomImageView(
                  svgPath: ImageConstant.imgVolumeWhiteA700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
