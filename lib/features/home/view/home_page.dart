import 'package:flutter/material.dart';
import 'package:taski/core/themes/app_styles.dart';
import 'package:taski/core/themes/colors_app.dart';
import 'package:taski/core/themes/text_styles_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            Card(
              elevation: 0,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Checkbox(
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
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Design sign up flow',
                            style: TextStylesApp.subTitle,
                          ),
                          Text(
                            r'By the time a prospect arrives at your signup page, in most cases, theyve already By the time a prospect arrives at your signup page, in most cases.',
                            style: TextStylesApp.textBody.copyWith(
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
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
                title: const Text(
                  'Design sign up flow',
                  style: TextStylesApp.subTitle,
                ),
                subtitle: Text(
                  r'By the time a prospect arrives at your signup page, in most cases, theyve already By the time a prospect arrives at your signup page, in most cases.',
                  style: TextStylesApp.textBody.copyWith(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
