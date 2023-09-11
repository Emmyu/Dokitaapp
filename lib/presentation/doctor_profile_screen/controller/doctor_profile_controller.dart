import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/presentation/doctor_profile_screen/models/doctor_profile_model.dart';

class DoctorProfileController extends GetxController {
  Rx<DoctorProfileModel> doctorProfileModelObj = DoctorProfileModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
