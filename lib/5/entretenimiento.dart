import 'package:flutter/material.dart';
import 'imagenes_deslizantes.dart';

entretenimiento() {
  return Scaffold(
    body: Center(
      child: SizedBox(
        width: double.infinity,
        height: 300,
        child: PageView(
          controller: PageController(
            viewportFraction: 0.6
          ),
          physics: const BouncingScrollPhysics(),
          children: const <Widget>[
            ImagenesDeslizantes(Colors.red),
            ImagenesDeslizantes(Colors.blue),
            ImagenesDeslizantes(Colors.green),
            ImagenesDeslizantes(Colors.brown),
            ImagenesDeslizantes(Colors.yellow),
          ],
        ),
      ),
    ),
  );
}
