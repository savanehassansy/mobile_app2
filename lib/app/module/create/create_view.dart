  import 'package:get/get.dart';
  import 'package:flutter/material.dart';
  import 'package:school_app/app/module/create/create_controller.dart';

  class CreateView extends GetView<CreateController> {
    const CreateView({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      CreateController controller = Get.put(CreateController());
      return Scaffold(
          body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                runSpacing: 20,
                children: [
                  TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Entrer un nom'),
                    controller: controller.name_Controller,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Entrer le salaire'),
                    controller: controller.salary_Controller,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Entrer un age'),
                    controller: controller.age_Controller,
                  ),

                  ElevatedButton(onPressed: controller.register, child: Text("Enregistrer"))
                ],
              )
            ],
          ),
        ),
      ));
    }
  }
