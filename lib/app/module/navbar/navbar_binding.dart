import 'package:get/get.dart';
import 'package:school_app/app/module/navbar/navbar_controller.dart';


class NavbarBing extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavBarController>(
          () => NavBarController(),
    );
  }
}