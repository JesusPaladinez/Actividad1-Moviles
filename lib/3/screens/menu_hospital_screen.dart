// Importar el paquete de Flutter para utilizar los widgets y funcionalidades de Material Design
import 'package:flutter/material.dart';

// Clase MenuHospitalScreen, un widget sin estado que representa la pantalla del menu del hospital
menuHospitalScreen() {
  // Devolver un widget Scaffold, que es el widget de nivel superior de la pantalla
  return Scaffold(
    // Establecer la barra de título de la pantalla
    appBar: AppBar(
      // Establecer el titulo de la barra de titulo
      title: const Text('Menu Hospital'),
    ),
    
    // Establecer el cuerpo de la pantalla
    body: const Center(
      // Establecer el hijo del widget Center, que es un widget Text
      child: Text('Menu Hospital'),
    ),
  );
}