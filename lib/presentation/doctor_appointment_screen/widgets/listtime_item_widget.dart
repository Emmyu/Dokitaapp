import '../controller/doctor_appointment_controller.dart';
import '../models/listtime_item_model.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListtimeItemWidget extends StatelessWidget {
  ListtimeItemWidget(this.listtimeItemModelObj);

  ListtimeItemModel listtimeItemModelObj;

  var controller = Get.find<DoctorAppointmentController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: getHorizontalSize(
            102,
          ),
          padding: getPadding(
            left: 24,
            top: 7,
            right: 24,
            bottom: 7,
          ),
          decoration: AppDecoration.txtFillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.txtCustomBorderTL10,
          ),
          child: Obx(
            () => Text(
              listtimeItemModelObj.timeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular12,
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            102,
          ),
          padding: getPadding(
            left: 23,
            top: 7,
            right: 23,
            bottom: 7,
          ),
          decoration: AppDecoration.txtFillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.txtCustomBorderTL10,
          ),
          child: Obx(
            () => Text(
              listtimeItemModelObj.timeOneTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular12,
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            102,
          ),
          padding: getPadding(
            left: 23,
            top: 7,
            right: 23,
            bottom: 7,
          ),
          decoration: AppDecoration.txtFillBlue500.copyWith(
            borderRadius: BorderRadiusStyle.txtCustomBorderTL10,
          ),
          child: Obx(
            () => Text(
              listtimeItemModelObj.timeTwoTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular12WhiteA700,
            ),
          ),
        ),
      ],
    );
  }
}
