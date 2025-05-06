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
            isScrollControlled: false,
            context: context,
            builder: (context) {
              return Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 10,
                    width: double.infinity,
                  ),
                  Container(
                    height: 10,
                    width: 50,
                    decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(5)),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                  ),
                  SizedBox(
                    height: 10,
                    width: double.infinity,
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
                  }),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    autofocus: true,
                    textAlign: TextAlign.center,
                    cursorColor: Colors.amber,
                    decoration: InputDecoration.collapsed(hintText: "Ingresa tu ponchopes"),
                    keyboardAppearance: Brightness.dark,
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Guardar"))
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
