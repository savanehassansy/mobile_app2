import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:get/get.dart';
import 'package:school_app/app/module/create/create_binding.dart';
import 'package:school_app/app/module/create/create_view.dart';
import 'package:school_app/app/module/navbar/navbar_binding.dart';

import '../module/home/home_binding.dart';
import '../module/home/home_view.dart';
import '../module/navbar/navbar.dart';
import '../module/splash/splash_binding.dart';
import '../module/splash/splash_view.dart';
part 'app_routes.dart';


class AppPages {
    AppPages._();

    static const INITIAL = Routes.SPLASH;

    static final routes = [
      GetPage(
          name: _Paths.SPLASH,
          page: () => const SplashView(),
          binding: SplashBinding()
      ),
      GetPage(
          name: _Paths.HOME,
          page: () => const HomeView(),
          binding: HomeBinding()
      ),

      GetPage(
          name: _Paths.NAVBAR,
          page: () => const NavBarView(),
          binding: NavbarBing()
      ),
      GetPage(
          name: _Paths.CREATE,
          page: () => const CreateView(),
          binding: CreateBinding()
      ),
    ];

}