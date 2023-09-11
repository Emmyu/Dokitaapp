import '../controller/doctor_appointment_controller.dart';
import '../models/listman_item_model.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListmanItemWidget extends StatelessWidget {
  ListmanItemWidget(this.listmanItemModelObj);

  ListmanItemModel listmanItemModelObj;

  var controller = Get.find<DoctorAppointmentController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: getMargin(
          right: 10,
        ),
        color: ColorConstant.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Container(
          height: getVerticalSize(
            57,
          ),
          width: getHorizontalSize(
            51,
          ),
          decoration: AppDecoration.fillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL10,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: getPadding(
                    left: 12,
                    right: 11,
                    bottom: 5,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_man".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtNunitoSemiBold12,
                      ),
                      Text(
                        "lbl_10".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtNunitoSemiBold18,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: getPadding(
                    left: 12,
                    top: 5,
                    right: 12,
                    bottom: 5,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 4,
                        ),
                        child: Obx(
                          () => Text(
                            listmanItemModelObj.manOneTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium12,
                          ),
                        ),
                      ),
                      Text(
                        "lbl_10".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular18,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
