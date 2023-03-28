import 'package:codigo6_shared/pages/profile_page.dart';
import 'package:flutter/material.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        //borderRadius: BorderRadius.circular(40.0)
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://media.istockphoto.com/id/1337444255/es/foto/ilustraci%C3%B3n-3d-retrowave-de-los-a%C3%B1os-80-de-un-paisaje-urbano-retro-con-brillantes-luces-de-ne%C3%B3n.jpg?b=1&s=612x612&w=0&k=20&c=Qda852-ijTIjginAntk9hHhkNjrC9DXhd8_kh-ErAAU=",
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/574071/pexels-photo-574071.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  ),
                  backgroundColor: Colors.indigo,
                  radius: 36,
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "Víctor Alegre",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  "valegreib@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              //Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            leading: const Icon(
              Icons.person,
            ),
            title: const Text("Mi perfil"),
          ),
          const ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: Text("Configuración"),
          ),
          const ListTile(
            leading: Icon(
              Icons.price_change,
            ),
            title: Text("Mis ventas"),
          ),
          const ListTile(
            leading: Icon(
              Icons.pie_chart,
            ),
            title: Text("Reportes"),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(
              Icons.exit_to_app,
            ),
            title: Text("Cerrar Sesión"),
          ),
        ],
      ),
      //width: 100,
      //elevation: 0,
    );
  }
}
