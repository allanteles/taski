import 'package:flutter/material.dart';

import '../../home/components/task_card_app.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    bool showDetails = false;
    return Padding(
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
    );
  }
}
