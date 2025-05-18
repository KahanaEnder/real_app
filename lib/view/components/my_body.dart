import 'package:flutter/material.dart';
import 'package:real_app/view/components/my_cards.dart';
import 'package:real_app/view/components/my_list_tile.dart';

class MyBody extends StatelessWidget {
  const MyBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.tealAccent[500],
            child: Column(
              children: [
                Text(
                            "Apodos:",
                            style: Theme.of(context).textTheme.bodyLarge,
                            textAlign: TextAlign.center,
                            ),
                Text(
                  "Poncho Ponchopes Ponchopeso\nPonchopesin Ponchopino Pirinpipino\nPreciosín Precioso Chiquitilin Chiquitilino",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 22,backgroundColor: Color.fromARGB(120, 255, 255, 255),shadows: List.filled(3, Shadow(color: Colors.black),growable: false)),
                    overflow: TextOverflow.ellipsis,
                    strutStyle: StrutStyle(height: 3),
                    )
              ],
            ),
            ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                                        border: Border.all(),
                                        color: Colors.teal[800],
                                        borderRadius: BorderRadius.vertical(),
                                        shape: BoxShape.rectangle,
                                        ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyCards(texto: "FAVORITOS",icono: Icons.catching_pokemon,),
                      MyCards(texto: "NUEVOS",icono:Icons.catching_pokemon_sharp),
                      MyCards(texto: "OPCIONES",icono: Icons.settings),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        const MyListTile(titulo: "Ponchopun",subtitulo: "Es un gato perezoson"),
                        const MyListTile(titulo: "Ponchapuna",subtitulo: "Es una gata traviesa",),
                        const MyListTile(titulo: "La pspspsps", subtitulo: "Es una gata loca",),
                        const MyListTile(titulo: "Ponchopezuño",subtitulo: "Es un gato perezoson"),
                        const MyListTile(titulo: "Ponchopezuña",subtitulo: "Es una gata perezosona"),
                        const MyListTile(titulo: "Momoso",subtitulo: "Es un gato momosin",),
                        const MyListTile(titulo: "Momosho",subtitulo: "Es un gato momosho",),
                        const MyListTile(titulo: "Pechocho",subtitulo: "Es un gato pechochín",),
                        const MyListTile(titulo: "",subtitulo: "",),
                        const MyListTile(titulo: "",subtitulo: "",),
                        const MyListTile(titulo: "",subtitulo: "",),
                      ],
                    ),
                  )
                ],
              ),
            
            ),
          ),
        ],
      ),
    );
  }
}