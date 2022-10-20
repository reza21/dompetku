import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dompetku"),
        backgroundColor: Color.fromARGB(255, 6, 154, 233),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Ini Home"),
            Text("Ini Home"),
          ],
        ),
      ),
    );
  }
}
