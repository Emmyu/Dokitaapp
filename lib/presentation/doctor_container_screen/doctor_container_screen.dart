import 'controller/doctor_container_controller.dart';
import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/presentation/doctor_page/doctor_page.dart';
import 'package:dokita_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class DoctorContainerScreen extends GetWidget<DoctorContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.doctorPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Group:
        return AppRoutes.doctorPage;
      case BottomBarEnum.Lightbulb:
        return "/";
      case BottomBarEnum.Grid:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.doctorPage:
        return DoctorPage();
      default:
        return DefaultWidget();
    }
  }
}
