import 'package:flutter/material.dart';
import 'controlador.dart';
import 'package:get/get.dart';

void main() {
  Get.put(Controlador());
  runApp(const Principal());
}

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

Controlador cambioVentana = Get.find();

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              ListTile(
                title: const Text('Inicio'),
                leading: const Icon(Icons.home),
                onTap: () {
                  cambioVentana.cambioPosicion(0);
                },
              ),
              ListTile(
                title: const Text('Deportes'),
                leading: const Icon(Icons.sports_soccer),
                onTap: () {
                  cambioVentana.cambioPosicion(1);
                },
              ),
              ListTile(
                title: const Text('Entretenimiento'),
                leading: const Icon(Icons.tv),
                onTap: () {
                  cambioVentana.cambioPosicion(2);
                },
              ),
            ],
          )
        ),
        appBar: AppBar(
          title: const Text('Aplicación de Noticias'),
        ),
        body: Obx(() => paginas[cambioVentana.cambioVista]),
      ),
    );
  }
}

List paginas = [inicio(), deportes(), entretenimiento()];

inicio() {
  return const Scaffold(
    body: Center(
      child: Text('Sección: Inicio'),
    ),
  );
}

deportes() {
  return const Scaffold(
    body: Center(
      child: Text('Sección: Deportes'),
    ),
  );
}

entretenimiento() {
  return const Scaffold(
    body: Center(
      child: Text('Sección: Entretenimiento'),
    ),
  );
}