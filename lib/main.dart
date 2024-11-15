import 'package:flutter/material.dart';
import 'package:navegacion_app/screens/home.dart';

void main() => runApp(const NavegarApp());

class NavegarApp extends StatelessWidget {
  const NavegarApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String tituloApp = 'Navegación App';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: tituloApp,
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown)),
      home: MyHomeScreen(
        titulo: tituloApp,
      ),
    );
  }
}
