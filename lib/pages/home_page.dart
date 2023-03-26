import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  save() async {
    SharedPreferences mandarina = await SharedPreferences.getInstance();
    mandarina.setString("name", "Victor Augusto Alegre");
    mandarina.setInt("age", 28);
    print("Guardando...");
  }

  getData() async{
    SharedPreferences mandarina = await SharedPreferences.getInstance();
    print(mandarina.getString("name"));
    print(mandarina.getInt("age"));
  }

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  save();
                },
                child: Text("Guardar")),
            ElevatedButton(onPressed: () {
              getData();
            }, child: Text("Obtener")),
          ],
        ),
      ),
    );
  }
}
