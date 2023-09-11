import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/presentation/payment_screen/models/payment_model.dart';
import 'package:flutter/material.dart';

class PaymentController extends GetxController {
  TextEditingController applepayController = TextEditingController();

  TextEditingController paypalController = TextEditingController();

  Rx<PaymentModel> paymentModelObj = PaymentModel().obs;

  RxString radioGroup = "".obs;

  RxString radioGroup1 = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    applepayController.dispose();
    paypalController.dispose();
  }
}
