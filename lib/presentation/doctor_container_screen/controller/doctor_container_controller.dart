import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/presentation/doctor_container_screen/models/doctor_container_model.dart';
import 'package:dokita_app/widgets/custom_bottom_bar.dart';

class DoctorContainerController extends GetxController {
  Rx<DoctorContainerModel> doctorContainerModelObj = DoctorContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
