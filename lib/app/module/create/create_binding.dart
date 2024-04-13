import 'package:get/get.dart';
import 'package:school_app/app/module/create/create_controller.dart';

class CreateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateController>(
          () => CreateController(),
    );
  }
}