import 'package:flutter/material.dart';
import 'package:real_app/view/components/my_materials.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MyMaterials();
  }
}
