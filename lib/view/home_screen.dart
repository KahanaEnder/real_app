import 'package:flutter/material.dart';
import 'package:real_app/view/components/my_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.teal,
      key: Key("Llave de la HomeScreen"),
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
      body: MyBody(),



      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Añadir",
        child: Icon(Icons.add),
        ),
    );
  }
}
