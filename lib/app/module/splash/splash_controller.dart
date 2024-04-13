import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../routes/app_pages.dart';

class SplashController extends GetxController {
  final getStorage = GetStorage();

  @override
  void onInit() {
    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(
      const Duration(seconds: 4),
      (() {
        Get.offAllNamed(Routes.NAVBAR);
      }),
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}

//if(getStorage.read("id") != null){
//Future.delayed(const Duration(milliseconds: 6000),((){
//Get.offAllNamed(Routes.HOME);
//}));
//}
//else{
//print("2");
//Get.offAllNamed(Routes.SIGN_IN);
//}
