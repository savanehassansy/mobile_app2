import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/app/module/delete/delete_controller.dart';


class DeleteView extends GetView<DeleteController>{
  const DeleteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("data")
          ],
        ),
      ),
    );
  }
}