import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: "Halaman Pertama",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 18, color: const Color.fromARGB(221, 0, 0, 0)),
          titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
        )
        appBarTheme: AppBarTheme(
          color: Colors.blue,
        )
      ),
    );
  }
}

