import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controlador.dart';

final txtNombreCompleto = TextEditingController();
final txtUsuario = TextEditingController();
final txtContrasenia = TextEditingController();
final txtConfirmarContrasenia = TextEditingController();
final txtEmail = TextEditingController();
final txtTelefono = TextEditingController();

Controlador cambioPagina = Get.find();

registro() {
  return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                TextFormField(
                  controller: txtNombreCompleto,
                  decoration: const InputDecoration(
                    labelText: 'Nombre completo: ', 
                  ),
                ),
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
                TextFormField(  
                  controller: txtConfirmarContrasenia,
                  decoration: const InputDecoration(
                    labelText: 'Confirmar contraseña: ', 
                  ),
                ),
                TextFormField(
                  controller: txtEmail,
                  decoration: const InputDecoration(
                    labelText: 'Email: ', 
                  ),
                ),
                TextFormField(
                  controller: txtTelefono,
                  decoration: const InputDecoration(
                    labelText: 'Telefono: ', 
                  ),
                ),
                const SizedBox(height: 20),
                FloatingActionButton(
                  onPressed: () {
                    cambioPagina.cambioPosicion(0);
                  },
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: const Text('Aceptar',
                  style: TextStyle(fontSize: 20.0)),
                ),
                const SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    cambioPagina.cambioPosicion(0);
                  },
                  shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: const Text('Cancelar',
                  style: TextStyle(fontSize: 20.0)),
                ),
              ],
            )
          );
}