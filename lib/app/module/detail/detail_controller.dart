import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:school_app/app/data/models/employ/employ.dart';

import '../../routes/app_pages.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DetailController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController salaryController = TextEditingController();
  TextEditingController ageController = TextEditingController();

    fetchUserData(int? id) async {
      final employsUrl =
          Uri.parse("https://dummy.restapiexample.com/api/v1/employee/$id");
      final response = await http.get(employsUrl);
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body)['data'];
        nameController.text = result['employee_name'];
        salaryController.text = result['employee_salary'].toString();
        ageController.text = result['employee_age'].toString();
      } else {
        print("Erreur");
      }
    }

  Future<Employ> updateEmployee(int? id ) async {
    final updateEmployeeUrl = Uri.parse(
        "https://dummy.restapiexample.com/api/v1/update/$id");

    final response = await http.put(updateEmployeeUrl, headers: {
      'Content-Type': 'application/json'
    }, body: jsonEncode(<String, String>{
      'employee_name': nameController.text,
      'employee_salary': salaryController.text,
      'employee_age': ageController.text,
    }) );

    print(response);
    if (response.statusCode == 200) {
      // La requête PUT a réussi
      print('Mise à jour de l\'employé réussie');

      print(response.body);
      return Employ.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      // Gérer les erreurs de la requête PUT
      print(
          'Erreur lors de la mise à jour de l\'employé. Code de statut : ${response.statusCode}');
      throw Exception('Failed to update album.');
    }
  }
}
