import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  



  const MyListTile({
    super.key,
    required this.titulo,
    required this.subtitulo,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(titulo),
      subtitle: Text(subtitulo,style: TextStyle(color: Colors.black),),
      leading: Icon(Icons.ac_unit),
      trailing: Icon(Icons.ac_unit_rounded),
      hoverColor: Colors.cyanAccent,
      iconColor: Colors.cyanAccent,
      shape: StadiumBorder(),
    );
  }
}
