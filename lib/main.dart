import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halam Utama"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("kehalaman kedua"),
          onPressed: () {
            NavigationBar.push(
              context,MaterialPageRoute(builder: (context => Secondpage()))
            )
          },
        ),
      ),
    );
  }
}