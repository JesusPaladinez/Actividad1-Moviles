import 'package:get/get.dart';

class Controlador extends GetxController {
  final _tituloBarra = 'Hoja de vida'.obs;
  final _cambioVista = 0
  
  
  .obs;

  // Se crea un método getter para acceder a su valor
  void cambioTitulo(String titulo) {
    _tituloBarra.value = titulo;
  }

  // variable para devolver el valor
  String get tituloBarra => _tituloBarra.value;

  void cambioPosicion(int numero) {
    _cambioVista.value = numero;
  }

  int get cambioVista => _cambioVista.value;

}