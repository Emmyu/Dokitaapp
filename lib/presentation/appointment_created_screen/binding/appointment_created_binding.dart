import '../controller/appointment_created_controller.dart';
import 'package:get/get.dart';

class AppointmentCreatedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppointmentCreatedController());
  }
}
