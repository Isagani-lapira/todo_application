import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/model/taskdata.dart';
import 'package:todo_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskModel(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
