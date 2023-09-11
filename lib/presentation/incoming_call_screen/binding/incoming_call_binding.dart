import '../controller/incoming_call_controller.dart';
import 'package:get/get.dart';

class IncomingCallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IncomingCallController());
  }
}
