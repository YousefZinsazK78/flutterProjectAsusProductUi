import 'package:flutter/material.dart';
import 'package:flutter_fourth_project/src/screens/product/product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'asus product app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomeScreen(),
      // home: const ChatScreen(),
      home: const ProductScreen(),
    );
  }
}
