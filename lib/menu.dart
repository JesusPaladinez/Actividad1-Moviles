import 'package:flutter/material.dart';
import 'controlador.dart';
import 'package:get/get.dart';

Controlador cambioVentana = Get.find();

menu() {
  return Drawer(
          child: Column(
            children: [
              ListTile(
                title: const Text('Inicio'),
                leading: const Icon(Icons.home),
                onTap: () {
                  cambioVentana.cambioPosicion(2);
                },
              ),
              ListTile(
                title: const Text('Deportes'),
                leading: const Icon(Icons.sports_soccer),
                onTap: () {
                  cambioVentana.cambioPosicion(3);
                },
              ),
              ListTile(
                title: const Text('Entretenimiento'),
                leading: const Icon(Icons.tv),
                onTap: () {
                  cambioVentana.cambioPosicion(4);
                },
              ),
              ListTile(
                title: const Text('Cerrar sesión'),
                onTap: () {
                  cambioVentana.cambioPosicion(0);
                },
              ),
            ],
          )
        );
}