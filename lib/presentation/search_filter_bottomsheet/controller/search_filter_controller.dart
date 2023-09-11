import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/presentation/search_filter_bottomsheet/models/search_filter_model.dart';

class SearchFilterController extends GetxController {
  Rx<SearchFilterModel> searchFilterModelObj = SearchFilterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
