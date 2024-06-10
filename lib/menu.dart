import 'package:flutter/material.dart';
import 'controlador.dart';
import 'package:get/get.dart';

Controlador cambioVentana = Get.find();

menu() {
  return const Menu();
}

class Menu extends StatelessWidget {
  const Menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
            child: Column(
              children: [
                ListTile(
                  title: const Text('Inicio'),
                  leading: const Icon(Icons.home),
                  onTap: () {
                    cambioVentana.cambioPosicion(2);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: const Text('Deportes'),
                  leading: const Icon(Icons.sports_soccer),
                  onTap: () {
                    cambioVentana.cambioPosicion(3);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: const Text('Imagenes deslizantes'),
                  leading: const Icon(Icons.tv),
                  onTap: () {
                    cambioVentana.cambioPosicion(4);
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: const Text('Cerrar sesión'),
                  onTap: () {
                    cambioVentana.cambioPosicion(0);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            )
          );
  }
}

