import 'package:flutter/material.dart';

class barrio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nuestro Barrio'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(
                context); // Esto te lleva de vuelta a la pantalla anterior
          },
          child: Text('Regresar'),
        ),
      ),
    );
  }
}
