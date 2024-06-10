import 'package:flutter/material.dart';

class ImagenesDeslizantes extends StatelessWidget {
  final Color color;
  const ImagenesDeslizantes(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(left: 30),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}
