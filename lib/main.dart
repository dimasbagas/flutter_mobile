import 'package:flutter/material.dart';
import 'second_page.dart';
import 'thri_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Navigasi FLutter",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color.fromARGB(255, 181, 191, 3),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 18, color: const Color.fromARGB(221, 0, 0, 0)),
          titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
        ),
        appBarTheme: AppBarTheme(
          color: Colors.blue,
          titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
        )
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("halam pertama")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Selamat datang",
            style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Secondpage()),
                );
              },
              child: Text("Kehalaman kedua"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThriPage()),
                );
              },
              child: Text("Kehalaman Ketiga"),
            ),
          ],
        ),
      ),
    );
  }
}

