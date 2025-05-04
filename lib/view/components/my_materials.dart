import 'package:flutter/material.dart';
import 'package:real_app/view/home_screen.dart';

class MyMaterials extends StatelessWidget {
  const MyMaterials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      title: "PonchoApp",
      color: Colors.teal,
    
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal,),
        useMaterial3: true,
        appBarTheme: AppBarTheme(backgroundColor: Colors.teal),
        textTheme: TextTheme(
    
          titleLarge: TextStyle(
            fontSize: 40,
            fontStyle: FontStyle.italic),
            
          bodyLarge: TextStyle(
    
            fontSize: 25,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold),
    
            ),
        iconTheme: IconThemeData(
          size: 23,
          color: Colors.purple,
          weight: 200,
          opacity: 1,
          opticalSize: 36,
          grade: 0.5,
          applyTextScaling: true,
          ),
        
        tooltipTheme: TooltipThemeData(
          decoration: BoxDecoration(border: Border.all(),
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20),
                                    shape: BoxShape.rectangle,
                                    
                                    ),
          padding: EdgeInsets.all(8.0),
          height: 15,
          margin: EdgeInsets.symmetric(),
    
          ),
        
        buttonTheme: ButtonThemeData(
          colorScheme: Theme.of(context).colorScheme,
          hoverColor: Colors.amber,
          shape: StadiumBorder(),
    
        ),
        
        ),
    
        debugShowCheckedModeBanner: false,
        
    
      home: HomeScreen(
    
        key: Key("Llave principal"),
    
      ),
    );
  }
}
