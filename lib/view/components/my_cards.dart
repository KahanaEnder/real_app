import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  final String texto;
  const MyCards({
    super.key,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Card(
        color: Colors.cyanAccent[100],
        elevation: 30, //Sombra debajo de las cartas que les da un efecto tridimensional
        margin: const EdgeInsets.all(8),
        shape: StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Icon(Icons.text_format),//Despues agregar el Icon al constructor
              Text(texto),
            ],
          ),
        ),
      
      ),
    );
  }
}