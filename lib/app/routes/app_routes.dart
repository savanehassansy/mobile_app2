part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const HOME = _Paths.HOME;
  //static const SIGN_IN = _Paths.SIGN_IN;
  static const SPLASH = _Paths.SPLASH;
  static const DETAIL = _Paths.DETAIL;
  static const CREATE = _Paths.CREATE;
  static const NAVBAR = _Paths.NAVBAR;
// static const ONBOARDING = _Paths.ONBOARDING;
}

abstract class _Paths {
  _Paths._();

  static const HOME = '/home';
  //static const SIGN_IN = '/sign_in';
  static const SPLASH = '/splash';
  static const DETAIL = '/detail';
  static const CREATE = '/create';
  static const NAVBAR = '/';
//static const ONBOARDING = '/onboarding';
}