import 'package:get/get.dart';

class NavBarController extends GetxController{
  var tabIndex = 0;
  void changeTabIndex(int index){
    tabIndex = index;
    update();
  }

  @override
  void onInit(){
    super.onInit();
  }


  @override
  void onReady(){
    super.onReady();
  }

  @override
  void onCLose(){
    super.onClose();
  }
}