import '../doctor_page/widgets/listrectangleseventythree_item_widget.dart';
import 'controller/doctor_controller.dart';
import 'models/doctor_model.dart';
import 'models/listrectangleseventythree_item_model.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/widgets/app_bar/appbar_image.dart';
import 'package:dokita_app/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:dokita_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DoctorPage extends StatelessWidget {
  DoctorController controller = Get.put(DoctorController(DoctorModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(57),
                leadingWidth: 70,
                leading: AppbarImage(
                    height: getSize(45),
                    width: getSize(45),
                    svgPath: ImageConstant.imgArrowleftWhiteA700,
                    margin: getMargin(left: 25, top: 5, bottom: 5),
                    onTap: onTapArrowleft3),
                centerTitle: true,
                title: AppbarSubtitle1(text: "lbl_select".tr),
                actions: [
                  AppbarImage(
                      height: getSize(7),
                      width: getSize(7),
                      svgPath: ImageConstant.imgPolygon1,
                      margin:
                          getMargin(left: 27, top: 24, right: 132, bottom: 24))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 25, top: 15, right: 25, bottom: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(top: 17),
                          padding: getPadding(all: 5),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.img,
                                    height: getVerticalSize(21),
                                    width: getHorizontalSize(17),
                                    margin:
                                        getMargin(left: 12, top: 8, bottom: 8)),
                                Padding(
                                    padding:
                                        getPadding(left: 12, top: 7, bottom: 7),
                                    child: Text("lbl_search".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular15)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgSettings,
                                    height: getSize(38),
                                    width: getSize(38))
                              ])),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("lbl_specialist".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16Bluegray900)),
                      Padding(
                          padding: getPadding(top: 8),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(13));
                              },
                              itemCount: controller.doctorModelObj.value
                                  .listrectangleseventythreeItemList.length,
                              itemBuilder: (context, index) {
                                ListrectangleseventythreeItemModel model =
                                    controller.doctorModelObj.value
                                            .listrectangleseventythreeItemList[
                                        index];
                                return ListrectangleseventythreeItemWidget(
                                    model);
                              })))
                    ]))));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
