// Importar el paquete de Flutter para utilizar los widgets y funcionalidades de Material Design
import 'package:flutter/material.dart';

// Clase CitasMedicasScreen, un widget sin estado que representa la pantalla de citas medicas
citasMedicasScreen() {
  // Devolver un widget Scaffold, que es el widget de nivel superior de la pantalla
  return Scaffold(
    // Establecer la barra de titulo de la pantalla
    appBar: AppBar(
      // Establecer el título de la barra de titulo
      title: const Text('Citas Médicas'),
    ),

    // Establecer el cuerpo de la pantalla
    body: ListView(
      children: const [
        ListTile(
          title: Text('Cita con el médico'),
          subtitle: Text('Descripción de la cita'),
        ),
        ListTile(
          title:Text('Cita con el especialista'),
          subtitle: Text('Descripción de la cita'),
        ),
        ListTile(
          title: Text('Cita con el terapeuta'),
          subtitle: Text('Descripción de la cita'),
        ),
      ],
    ),
  );
}