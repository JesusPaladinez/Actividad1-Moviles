import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controlador.dart';

final txtUsuario = TextEditingController();
final txtContrasenia = TextEditingController();

Controlador cambioPagina = Get.find();

inicioSesion() {
  return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          TextFormField(
            controller: txtUsuario,
            decoration: const InputDecoration(
              labelText: 'Usuario: ',
            ),
          ),
          TextFormField(
            controller: txtContrasenia,
            decoration: const InputDecoration(
              labelText: 'Contraseña: ',
            ),
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {
              cambioPagina.cambioPosicion(2);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            backgroundColor: Colors.greenAccent[700],
            foregroundColor: Colors.white,
            child: const Text('Iniciar sesión',
              style: TextStyle(
                fontSize: 20.0
              )
            ),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              cambioPagina.cambioPosicion(1);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            backgroundColor: Colors.greenAccent[700],
            foregroundColor: Colors.white,
            child: const Text('Registrarse',
              style: TextStyle(
                fontSize: 20.0
              )
            ),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            backgroundColor: Colors.greenAccent[700],
            foregroundColor: Colors.white,
            child: const Text('¿Olvidó su contraseña?',
              style: TextStyle(
                fontSize: 20.0
              )
            ),
          ),
        ],
      ));
}