// Importar el paquete de Flutter para utilizar los widgets y funcionalidades de Material Design
import 'package:flutter/material.dart';

// Clase MenuItemWidget, un widget sin estado que representa un item de menu
class MenuItemWidget extends StatelessWidget {
  // Propiedad title, que almacena el titulo del item de menu
  final String title;
  
  // Propiedad icon, que almacena el icono del item de menu
  final IconData icon;
  
  // Propiedad onTap, que almacena la funcion que se ejecutara cuando se pulse el item de menu
  final Function onTap;
  
  // Propiedad route, que almacena la ruta que se navegara cuando se pulse el item de menu
  final String route;
  
  // Constructor de la clase MenuItemWidget, que inicializa las propiedades title, icon, onTap y route
  const MenuItemWidget(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap,
      required this.route});

  // Metodo build, que se encarga de construir el arbol de widgets del item de menu
  @override
  Widget build(BuildContext context) {
    // Devolver un widget GestureDetector, que detecta los eventos de pulsacion
    return GestureDetector(
      // Establecer la funcion que se ejecutara cuando se pulse el item de menu
      onTap: () => onTap(),
      
      // Establecer el hijo del widget GestureDetector, que es un widget Column
      child: Column(
        // Establecer la alineacion vertical del widget Column
        mainAxisAlignment: MainAxisAlignment.center,
        
        // Establecer los hijos del widget Column, que son un icono y un texto
        children: [
          // Widget Icon, que representa el icono del item de menu
          Icon(icon, size: 40),
          
          // Widget SizedBox, que agrega un espacio entre el icono y el texto
          const SizedBox(height: 10),
          
          // Widget Text, que representa el titulo del item de menu
          Text(title),
        ],
      ),
    );
  }
}
