import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/presentation/payment_done_screen/models/payment_done_model.dart';

class PaymentDoneController extends GetxController {
  Rx<PaymentDoneModel> paymentDoneModelObj = PaymentDoneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
