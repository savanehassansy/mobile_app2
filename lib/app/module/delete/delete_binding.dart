import 'package:get/get.dart';
import 'package:school_app/app/module/create/create_controller.dart';
import 'package:school_app/app/module/delete/delete_controller.dart';


class DeleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeleteController>(
          () => DeleteController(),
    );
  }
}