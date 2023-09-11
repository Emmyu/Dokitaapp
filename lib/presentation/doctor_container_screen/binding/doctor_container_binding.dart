import '../controller/doctor_container_controller.dart';
import 'package:get/get.dart';

class DoctorContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorContainerController());
  }
}
