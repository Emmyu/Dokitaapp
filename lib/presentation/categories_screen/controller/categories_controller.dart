import 'package:dokita_app/core/app_export.dart';
import 'package:dokita_app/presentation/categories_screen/models/categories_model.dart';

class CategoriesController extends GetxController {
  var id = Get.arguments[NavigationArgs.id];

  Rx<CategoriesModel> categoriesModelObj = CategoriesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
