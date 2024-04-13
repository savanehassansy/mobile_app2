import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/app/module/splash/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({ Key? key }) : super( key : key );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(

          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.cyan,
                Colors.orange,
                Colors.deepOrange,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('hello'),
            ],
          ),
        ),
      ),
    );
  }
}