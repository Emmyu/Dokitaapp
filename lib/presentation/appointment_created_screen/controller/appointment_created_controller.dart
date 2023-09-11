import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/presentation/appointment_created_screen/models/appointment_created_model.dart';

class AppointmentCreatedController extends GetxController {
  Rx<AppointmentCreatedModel> appointmentCreatedModelObj =
      AppointmentCreatedModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
