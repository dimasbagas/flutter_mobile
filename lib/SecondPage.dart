import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halam kedua"),
      ),
      body: Center(
        child: Text("ini halam kedua"),
      ),
    );
  }
}