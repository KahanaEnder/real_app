import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_app/view/components/my_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int? typeIndex = 0;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.teal,
      key: const Key("Llave de la HomeScreen"),
      appBar: AppBar(
        surfaceTintColor: Colors.tealAccent,
        elevation: 20,
        leading: Icon(

          Icons.app_shortcut,
          color: Theme.of(context).iconTheme.color,
          size: Theme.of(context).iconTheme.size,),

        title: Text(
          "PonchoNames",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(letterSpacing: 4,fontWeight: FontWeight.w900,),
          textAlign: TextAlign.end,),
        
      ),
      body: const MyBody(),



      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Column(
                children: [
                  SizedBox(
                    height: 50,
                    width: 800,
                  ),
                  CupertinoSlidingSegmentedControl(
                  groupValue: typeIndex,
                  children:
                  const {
                    0:Text("Nombre"),
                    1:Text("Descripción"),},
                  onValueChanged: (value) {
                    setState(() {
                      typeIndex = value;
                    });
                  })
                ],
              );
            }
          );
        },
        tooltip: "Añadir",
        child: const Icon(Icons.add),
        ),
    );
  }
}
