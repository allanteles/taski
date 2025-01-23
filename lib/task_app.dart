import 'package:flutter/material.dart';
import 'package:taski/core/themes/theme_app.dart';
import 'package:taski/features/home/view/home_page.dart';

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taski',
      theme: ThemeApp.light,
      home: const HomePage(),
    );
  }
}
