import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/app/module/create/create_view.dart';
import 'package:school_app/app/module/delete/delete_view.dart';
import 'package:school_app/app/module/home/home_view.dart';
import 'package:school_app/app/module/navbar/navbar_controller.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(builder: (controller){
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            HomeView(),
            CreateView(),
            DeleteView()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,

          items: [
            _bottombarItem(Icons.home_outlined, "Home"),
            _bottombarItem(Icons.person_2_outlined, "Créer"),
            _bottombarItem(Icons.delete_outline_rounded, "Supprimer")
          ],
        ),
      );
    });
  }
}

_bottombarItem(IconData icon , String label){
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}
