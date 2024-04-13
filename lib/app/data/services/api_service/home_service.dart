import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../models/employ/employ.dart';

class HomeService {
  Future<Employ> createEmploy(Employ employ) async {
    final createEmployUrl =
        Uri.parse("https://dummy.restapiexample.com/api/v1/create");
    // Convertir l'objet Employ en JSON
      String employJson = jsonEncode(employ);
    print(employJson);
    try {
      // Effectuer la requête POST
      final response = await http.post(
        createEmployUrl,
        headers: {
          'Content-Type': 'application/json'
        },
        body: employJson,
      );
      print(response.statusCode);
      // Vérifier le statut de la réponse
      if (response.statusCode == 200) {
        print(response.body);
        print("Employ créé avec succès!");
        return Employ.fromJson(
            json.decode(response.body)['data'] as Map<String, dynamic>);
      } else {
        print(
            "Erreur lors de la création de l'employé. Statut : ${response.statusCode}");
        throw Exception('Failed to create album.');
      }
    } catch (e) {
      print("Erreur lors de la requête POST : $e");
      throw Exception('Failed to create album.');
    }
  }

  Future<List<Employ>> Employees() async {
    final allEmployUrl =
        Uri.parse("https://dummy.restapiexample.com/api/v1/employees");
    final response = await http.get(allEmployUrl);
    List<Employ> allEmploy = [];
    List body = json.decode(response.body)['data'];
    print(body);
    for (var employ in body) {
      allEmploy.add(Employ.fromJson(employ));
    }
    return allEmploy;
  }

  Future<Employ> updateEmployee(
      int? employeeId, Map<String, dynamic> updatedEmployeeData) async {
    try {
      final updateEmployeeUrl = Uri.parse(
          "https://dummy.restapiexample.com/api/v1/update/$employeeId");
      final response = await http.put(
        updateEmployeeUrl,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(updatedEmployeeData),
      );
      if (response.statusCode == 201) {
        // La requête PUT a réussi
        print(response.body);
        return Employ.fromJson(
            jsonDecode(response.body) as Map<String, dynamic>);
      } else {
        // Gérer les erreurs de la requête PUT
        throw Exception('Failed to update album.');
      }
    } catch (error) {
      // Gérer les erreurs d'exception
      throw Exception('Failed to update album. $error');
    }
  }

  deleteUserData(String userid) async {
    //getx delete api data
    var token = 'YOUR_TOKEN';

    print(userid);
    try {
      final http.Response response = await http.delete(
        Uri.parse('https://dummy.restapiexample.com/api/v1/delete/$userid'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      print(response.statusCode);
      if (response.statusCode == 201) {
        final json = jsonDecode(response.body);
        // delete success, do anything
        print('deleted user $userid');
      } else {
        print('response status code not 200');
        throw jsonDecode(response.body)['meta']["message"] ??
            "Unknown Error Occured";
      }
    } catch (e) {
      print(e);
    }
  }
}
