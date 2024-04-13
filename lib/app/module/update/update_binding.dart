import 'package:get/get.dart';
import 'package:school_app/app/module/update/update_controller.dart';

class UpdateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdateController>(
          () => UpdateController(),
    );
  }
}