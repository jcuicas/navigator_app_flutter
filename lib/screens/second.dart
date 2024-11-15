import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String titulo;

  const SecondScreen({
    super.key,
    required this.titulo,
  });

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          widget.titulo,
          style: TextStyle(
            color: Color(0xffffffff),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Segunda página...',
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
              Navigator.pop(context);
            },
            label: const Text(
              'Retorno',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
            ),
          )
        ],
      ),
      backgroundColor: Colors.amber[100],
    );
  }
}
