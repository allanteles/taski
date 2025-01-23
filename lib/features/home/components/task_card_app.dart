import 'package:flutter/material.dart';

import '../../../core/themes/colors_app.dart';
import '../../../core/themes/text_styles_app.dart';

class TaskCardApp extends StatelessWidget {
  final String title;
  final String? subTitle;
  final VoidCallback? showMore;
  final bool showDetatis;
  const TaskCardApp({
    super.key,
    required this.title,
    this.subTitle,
    this.showMore,
    this.showDetatis = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 2),
        leading: Checkbox(
          value: false,
          side: const BorderSide(
            color: ColorsApp.terciary,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          onChanged: (value) {},
        ),
        title: Text(
          title,
          style: TextStylesApp.subTitle,
        ),
        subtitle: showDetatis
            ? Text(
                subTitle ?? '',
                style: TextStylesApp.textBody.copyWith(
                  color: Theme.of(context).colorScheme.tertiary,
                ),
              )
            : null,
        trailing: IconButton(
          icon: const Icon(
            Icons.more_horiz,
            color: ColorsApp.terciary,
          ),
          onPressed: showMore,
        ),
      ),
    );
  }
}
