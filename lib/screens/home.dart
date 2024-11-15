import 'package:flutter/material.dart';
import 'package:navegacion_app/screens/second.dart';

class MyHomeScreen extends StatefulWidget {
  final String titulo;

  const MyHomeScreen({super.key, required this.titulo});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          widget.titulo,
          style: const TextStyle(
            color: Color(0xffffffff),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Primera página...',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(titulo: widget.titulo),
                ),
              );
            },
            label: const Text(
              'Ir a la página siguiente',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            icon: const Icon(Icons.arrow_circle_right_outlined),
          ),
        ],
      ),
      backgroundColor: Colors.amber[100],
    );
  }
}
