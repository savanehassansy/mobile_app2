import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/app/module/detail/detail_controller.dart';
class DetailView extends GetView<DetailController> {
  const DetailView(this.id, {Key? key}) : super(key: key);
  final int? id;

  @override
  Widget build(BuildContext context) {
    DetailController controller = Get.put(DetailController());
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Wrap(
                  runSpacing: 20,
                  children: [
                TextField(
                  controller: controller.nameController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Entrer un nom'),
                ),
                TextField(
                  controller: controller.salaryController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Entrer un nom'),
                ),
                TextField(
                  controller: controller.ageController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Entrer un nom'),
                ),

              ]),
             const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.fetchUserData(id);
                },
                child: Text('Charger les donné'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.updateEmployee(id);
                },
                child: Text('Modifier'),
              ),
            ],
          ),
        ));
  }
}
