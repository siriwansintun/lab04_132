import 'package:flutter/material.dart';
import 'package:lab04_132/pages/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color.fromARGB(255, 255, 237, 251)
          ),
        useMaterial3: true,
      ),
      home: const FirstPage(),
    );
  }
}
