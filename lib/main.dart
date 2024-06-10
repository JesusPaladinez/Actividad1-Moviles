import 'package:flutter/material.dart';
import 'controlador.dart';
import 'menu.dart';
import 'package:get/get.dart';
import './1/encabezado.dart';
import './1/deportes.dart';
import './1/entretenimiento.dart';
import './3/screens/citas_medicas_screen.dart';
import './3/screens/home_screen.dart';
import './3/screens/menu_hospital_screen.dart';
import './4/inicio_sesion.dart';
import './4/registro.dart';

void main() {
  Get.put(Controlador());
  runApp(const Principal());
}

List paginas = [inicioSesion(), registro(), homeScreen(), deportes(), entretenimiento(), citasMedicasScreen(), menuHospitalScreen()];

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: encabezado(),
        body: Obx(() => paginas[cambioVentana.cambioVista]),
        drawer: menu(),
      ),
    );
  }
}
