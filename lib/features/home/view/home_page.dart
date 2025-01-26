import 'package:flutter/material.dart';
import 'package:taski/components/appbar_app.dart';
import 'package:taski/features/home/components/bottom_navigator_app.dart';
import 'package:taski/features/todo/view/todo_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarApp(
        name: 'John',
      ),
      body: const TodoPage(),
      bottomNavigationBar: const BottomNavigatorApp(),
    );
  }
}
