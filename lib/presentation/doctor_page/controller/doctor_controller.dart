import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/presentation/doctor_page/models/doctor_model.dart';

class DoctorController extends GetxController {
  DoctorController(this.doctorModelObj);

  Rx<DoctorModel> doctorModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
