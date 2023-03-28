import 'package:codigo6_shared/widgets/my_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "";
  int age = 0;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  save() async {
    SharedPreferences mandarina = await SharedPreferences.getInstance();
    mandarina.setString("name", _nameController.text);
    mandarina.setString("address", _addressController.text);
    mandarina.setString("email", _emailController.text);
    print("Guardando...");
  }

  getData() async {
    SharedPreferences mandarina = await SharedPreferences.getInstance();
    print(mandarina.getString("name"));
    print(mandarina.getString("address"));
    print(mandarina.getString("email"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Shared Preferences"),
      ),
      drawer: const MyDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                hintText: "Nombre Completo",
              ),
            ),
            const SizedBox(height: 10.0,),
            TextField(
              controller: _addressController,
              decoration: const InputDecoration(
                hintText: "Dirección",
              ),
            ),
            const SizedBox(height: 10.0,),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: "Correo Electrónico",
              ),
            ),
            const SizedBox(height: 10.0,),
            ElevatedButton(
                onPressed: () {
                  save();
                },
                child: const Text("Guardar")),
            // ElevatedButton(
            //     onPressed: () {
            //       getData();
            //     },
            //     child: Text("Obtener")),
          ],
        ),
      ),
    );
  }
}
