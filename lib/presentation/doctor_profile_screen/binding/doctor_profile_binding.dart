import '../controller/doctor_profile_controller.dart';
import 'package:get/get.dart';

class DoctorProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorProfileController());
  }
}
