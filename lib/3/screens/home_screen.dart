// Importar el paquete de Flutter para utilizar los widgets y funcionalidades de Material Design
import 'package:flutter_evaluacion2/3/data/menu_items.dart';
import 'package:flutter_evaluacion2/3/widgets/menu_items.dart';
import 'package:flutter/material.dart';

// Clase HomeScreen, un widget sin estado que representa la pantalla de inicio
homeScreen() {
  // Devolver un widget Scaffold, que es el widget de nivel superior de la pantalla
  return Scaffold(
    // Establecer la barra de titulo de la pantalla
    appBar: AppBar(
      // Establecer el titulo de la barra de titulo
      title: const Text('Home'),
    ),
    
    // Establecer el cuerpo de la pantalla
    body: GridView.builder(
      // Establecer la delegada de grid, que define la estructura de la grilla
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        // Establecer el numero de columnas de la grilla
        crossAxisCount: 2,
        // Establecer el espacio entre las columnas
        crossAxisSpacing: 10,
        // Establecer el espacio entre las filas
        mainAxisSpacing: 10,
      ),
      
      // Establecer el numero de items en la grilla
      itemCount: menuItems.length,
      
      // Establecer la funcion que construye cada item de la grilla
      itemBuilder: (context, index) {
        // Devolver un widget MenuItemWidget, que representa un item de menu
        return MenuItemWidget(
          // Establecer el titulo del item de menu
          title: menuItems[index].title,
          // Establecer el icono del item de menu
          icon: menuItems[index].icon,
          // Establecer la funcion que se ejecutara cuando se pulse el item de menu
          onTap: () {
            // Verificar si el item de menu es "Citas Medicas"
            if (menuItems[index].route == '/citas_medicas') {
              // Navegar a la pantalla de citas medicas
              Navigator.pushNamed(context, menuItems[index].route);
            } else {
              // Navegar a la pantalla correspondiente al item de menu
              Navigator.pushNamed(context, menuItems[index].route);
            }
          },
          // Establecer la ruta del item de menu (no se utiliza en este caso)
          route: '',
        );
      },
    ),
  );
}