import 'package:flutter/material.dart';

deportes() {
  return const Scaffold(
    body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.sports_soccer),
          SizedBox(width: 8),
          Text('Sección: Deportes'),
        ],
      ),
    ),
  );
}
