import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/presentation/incoming_call_screen/models/incoming_call_model.dart';

class IncomingCallController extends GetxController {
  Rx<IncomingCallModel> incomingCallModelObj = IncomingCallModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
