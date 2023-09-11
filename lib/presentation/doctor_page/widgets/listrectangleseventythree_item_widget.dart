import '../controller/doctor_controller.dart';
import '../models/listrectangleseventythree_item_model.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListrectangleseventythreeItemWidget extends StatelessWidget {
  ListrectangleseventythreeItemWidget(
      this.listrectangleseventythreeItemModelObj);

  ListrectangleseventythreeItemModel listrectangleseventythreeItemModelObj;

  var controller = Get.find<DoctorController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 8,
        bottom: 8,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: getVerticalSize(
              63,
            ),
            width: getHorizontalSize(
              64,
            ),
            margin: getMargin(
              top: 3,
              bottom: 4,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: getVerticalSize(
                      61,
                    ),
                    width: getHorizontalSize(
                      62,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.blue500,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          getHorizontalSize(
                            20,
                          ),
                        ),
                        bottomLeft: Radius.circular(
                          getHorizontalSize(
                            20,
                          ),
                        ),
                        bottomRight: Radius.circular(
                          getHorizontalSize(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: getSize(
                      12,
                    ),
                    width: getSize(
                      12,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgGroup69,
                          height: getSize(
                            12,
                          ),
                          width: getSize(
                            12,
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getSize(
                              8,
                            ),
                            width: getSize(
                              8,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.teal400,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  4,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgShutterstock15,
                  height: getVerticalSize(
                    60,
                  ),
                  width: getHorizontalSize(
                    62,
                  ),
                  radius: BorderRadius.only(
                    topLeft: Radius.circular(
                      getHorizontalSize(
                        20,
                      ),
                    ),
                    bottomLeft: Radius.circular(
                      getHorizontalSize(
                        20,
                      ),
                    ),
                    bottomRight: Radius.circular(
                      getHorizontalSize(
                        20,
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              bottom: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "msg_dr_mahbuba_islam".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsMedium16,
                ),
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_cardiologist".tr,
                          style: TextStyle(
                            color: ColorConstant.gray500,
                            fontSize: getFontSize(
                              10,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "msg_cumilla_madical".tr,
                          style: TextStyle(
                            color: ColorConstant.gray500,
                            fontSize: getFontSize(
                              10,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: getHorizontalSize(
                          96,
                        ),
                        margin: getMargin(
                          top: 1,
                          bottom: 2,
                        ),
                        padding: getPadding(
                          left: 8,
                          top: 2,
                          right: 8,
                          bottom: 2,
                        ),
                        decoration: AppDecoration.txtFillBlue50014.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder4,
                        ),
                        child: Text(
                          "msg_10_20_am_12_30".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular9,
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          24,
                        ),
                        width: getHorizontalSize(
                          20,
                        ),
                        margin: getMargin(
                          left: 106,
                        ),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getSize(
                                  20,
                                ),
                                width: getSize(
                                  20,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.blue500,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 4,
                                ),
                                child: Text(
                                  "lbl".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16WhiteA700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
