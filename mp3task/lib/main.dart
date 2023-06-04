import 'package:flutter/material.dart';
import 'package:mp3task/bottomnav.dart';
import 'package:mp3task/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ToDoProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomBar(),
      ),
    );
  }
}
