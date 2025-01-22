import 'package:flutter/material.dart';
import 'package:taski/features/home/view/home_page.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taski',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
