import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/models/employ/employ.dart';
import '../../data/services/api_service/home_service.dart';

class CreateController extends GetxController {
  final TextEditingController name_Controller = TextEditingController();
  final TextEditingController salary_Controller = TextEditingController();
  final TextEditingController age_Controller = TextEditingController();


  register() async {
    // Récupérer les données des contrôleurs
    String employeeName = name_Controller.text;
    int employeeSalary = int.parse(salary_Controller.text);
    int employeeAge = int.parse(age_Controller.text);

    // Créer un objet Employ avec les données
    Employ employee = Employ(
      employeeName: employeeName,
      employeeSalary: employeeSalary,
      employeeAge: employeeAge,
    );

    Map<String, dynamic> jsonData = employee.toJson();

    // Appeler le service pour effectuer la requête POST
    try {
      await HomeService().createEmploy(employee);

      name_Controller.clear();
      salary_Controller.clear();
      age_Controller.clear();
    } catch (error) {
      // Gérer les erreurs de la requête POST
      print(' 11 Erreur lors de la création de l\'employé : $error');
    }
  }
}
