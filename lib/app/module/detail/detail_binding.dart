import 'package:get/get.dart';
import 'package:school_app/app/module/detail/detail_controller.dart';


class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(
          () => DetailController(),
    );
  }
}