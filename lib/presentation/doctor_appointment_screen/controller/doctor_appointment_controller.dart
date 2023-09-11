import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/presentation/doctor_appointment_screen/models/doctor_appointment_model.dart';

class DoctorAppointmentController extends GetxController {
  Rx<DoctorAppointmentModel> doctorAppointmentModelObj =
      DoctorAppointmentModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
