import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  final String texto;
  final IconData icono;
  const MyCards({
    super.key,
    required this.texto,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
        },
        child: Card(
          color: Colors.cyanAccent[100],
          elevation: 30, //Sombra debajo de las cartas que les da un efecto tridimensional
          margin: const EdgeInsets.all(5),
          shape: const StadiumBorder(),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(icono),//Despues agregar el Icon al constructor
                Text(texto),
              ],
            ),
          ),
        
        ),
      ),
    );
  }
}