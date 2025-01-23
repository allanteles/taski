import 'package:flutter/material.dart';
import 'package:taski/features/home/components/task_card_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showDetails = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TaskCardApp(
              title: 'Design sign up flow',
              subTitle:
                  r'By the time a prospect arrives at your signup page, in most cases, theyve already By the time a prospect arrives at your signup page, in most cases.',
              showDetatis: showDetails,
              showMore: () {
                setState(() {
                  showDetails = !showDetails;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
