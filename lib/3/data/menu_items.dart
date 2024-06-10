// Importar el paquete de Flutter para utilizar los widgets y funcionalidades de Material Design
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controlador.dart';

Controlador cambioPagina = Get.find();

// Clase MenuItem, que representa un item de menu
class MenuItem {
  // Atributo title, que es el título del item de menu
  final String title;
  
  // Atributo icon, que es el icono del item de menu
  final IconData icon;
  
  // Atributo route, que es la ruta asociada al item de menu
  final String route;
  
  // Atributo onTap, que almacena la funcion que se ejecutara cuando se pulse el item de menu
  final Function onTap;

  // Constructor de la clase MenuItem, que inicializa los atributos
  MenuItem({
    required this.title,
    required this.icon,
    required this.route,
    required this.onTap,
  });
}

// Lista de items de menu, que se utilizará para construir la grilla de menu
final List<MenuItem> menuItems = [
  // Item de menu "Citas Médicas"
  MenuItem(title: 'Citas Médicas', icon: Icons.calendar_today, route: '/citas_medicas', onTap: () {
      cambioPagina.cambioPosicion(5);
    },
  ),
  
  // Item de menu "Urgencias"
  MenuItem(title: 'Urgencias', icon: Icons.medical_services, route: '/menu_hospital', onTap: () {
      cambioPagina.cambioPosicion(6);
    },),
  
  // Item de menu "Especialistas"
  MenuItem(title: 'Especialistas', icon: Icons.person, route: '/menu_hospital', onTap: () {
      cambioPagina.cambioPosicion(6);
    },),
  
  // Item de menu "Farmacia"
  MenuItem(title: 'Farmacia', icon: Icons.local_pharmacy, route: '/menu_hospital', onTap: () {
      cambioPagina.cambioPosicion(6);
    },),
  
  // Item de menu "Pacientes"
  MenuItem(title: 'Pacientes', icon: Icons.people, route: '/menu_hospital', onTap: () {
      cambioPagina.cambioPosicion(6);
    },),
  
  // Item de menu "Terapias"
  MenuItem(title: 'Terapias', icon: Icons.healing, route: '/menu_hospital', onTap: () {
      cambioPagina.cambioPosicion(6);
    },),
  
  // Item de menu "Laboratorio"
  MenuItem(title: 'Laboratorio', icon: Icons.local_hospital, route: '/menu_hospital', onTap: () {
      cambioPagina.cambioPosicion(6);
    },),
  
  // Item de menu "Sangre"
  MenuItem(title: 'Sangre', icon: Icons.bloodtype, route: '/menu_hospital', onTap: () {
      cambioPagina.cambioPosicion(6);
    },),
  
  // Item de menu "Rehabilitación"
  MenuItem(title: 'Rehabilitación', icon: Icons.accessibility, route: '/menu_hospital', onTap: () {
      cambioPagina.cambioPosicion(6);
    },),
  
  // Item de menu "Consultas"
  MenuItem(title: 'Consultas', icon: Icons.assignment_ind, route: '/menu_hospital', onTap: () {
      cambioPagina.cambioPosicion(6);
    },),
  
  // Item de menu "Informes"
  MenuItem(title: 'Informes', icon: Icons.folder, route: '/menu_hospital', onTap: () {
      cambioPagina.cambioPosicion(6);
    },),
  
  // Item de menu "Calendario"
  MenuItem(title: 'Calendario', icon: Icons.calendar_today, route: '/menu_hospital', onTap: () {
      cambioPagina.cambioPosicion(6);
    },),
  
  // Item de menu "Pagos"
  MenuItem(title: 'Pagos', icon: Icons.payment, route: '/menu_hospital', onTap: () {
      cambioPagina.cambioPosicion(6);
    },),
  
  // Item de menu "Contactos"
  MenuItem(title: 'Contactos', icon: Icons.contact_phone, route: '/menu_hospital', onTap: () {
      cambioPagina.cambioPosicion(6);
    },),
  
  // Item de menu "Información"
  MenuItem(title: 'Información', icon: Icons.info, route: '/menu_hospital', onTap: () {
      cambioPagina.cambioPosicion(6);
    },),
];