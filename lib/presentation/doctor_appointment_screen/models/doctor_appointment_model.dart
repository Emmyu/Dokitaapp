import 'package:get/get.dart';
import 'listman_item_model.dart';
import 'listtime_item_model.dart';

class DoctorAppointmentModel {
  RxList<ListmanItemModel> listmanItemList =
      RxList.generate(6, (index) => ListmanItemModel());

  RxList<ListtimeItemModel> listtimeItemList =
      RxList.generate(2, (index) => ListtimeItemModel());
}
