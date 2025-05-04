import 'package:flutter/material.dart';
import 'package:real_app/view/components/my_cards.dart';

class MyBody extends StatelessWidget {
  const MyBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
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
                Text("Poncho Ponchopes Ponchopeso\nPonchopesin Ponchopino Pirinpipino\nPreciosín Precioso Chiquitilin Chiquitilino",
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
              margin: EdgeInsets.symmetric(),
              padding: EdgeInsets.all(8.0),
              
              decoration: BoxDecoration(
                                        border: Border.all(),
                                        color: Colors.teal[800],
                                        borderRadius: BorderRadius.vertical(),
                                        shape: BoxShape.rectangle,
                                        ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyCards(texto: "CARTA1"),
                      MyCards(texto: "CARTA2",),
                      MyCards(texto: "CARTA3",),
                    ],
                  ),
                ],
              ),
            
            ),
          ),
        ],
      ),
    );
  }
}
