import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:school_app/app/data/models/employ/employ.dart';
import 'package:school_app/app/data/services/api_service/home_service.dart';
import 'package:school_app/app/module/detail/detail_view.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {

  const HomeView({Key? key}) : super(key: key);

  final int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: FutureBuilder(
              future: HomeService().Employees(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    return Container(
                        child: ListView.builder(
                            itemCount: snapshot.data?.length,
                            itemBuilder: (context, index) {
                              Employ? employ = snapshot.data?[index];
                              print(employ);
                              return ListTile(
                                leading: SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset("assets/img/user.png")),
                                title: Text(employ!.employeeName!),
                                subtitle:
                                    Text(employ.employeeName!.toString()),
                                trailing: const Icon(Icons.arrow_forward_outlined),
                                onTap: (){
                                  Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => DetailView(employ.id)));
                                },
                              );
                            }));
                  } else if (snapshot.hasError) {
                    // Gestion des erreurs ici
                    return Text("Erreur: ${snapshot.error}");
                  } else {
                    // La future a terminé, mais n'a retourné aucune donnée
                    return Text("Aucune donnée disponible");
                  }
                } else {
                  // La future n'a pas encore terminé
                  return Text("Chargement en cours...");
                }
              },
            ))
          ],
        ),
      ),
    );
  }
}
