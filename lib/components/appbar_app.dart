import 'package:flutter/material.dart';
import 'package:taski/core/themes/colors_app.dart';
import 'package:taski/core/themes/text_styles_app.dart';
import 'package:heroicons/heroicons.dart';

class AppbarApp extends AppBar {
  final String name;
  AppbarApp({super.key, required this.name})
      : super(
          title: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: ColorsApp.primary,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 32,
                width: 32,
                child: const HeroIcon(
                  HeroIcons.check,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                'Taski',
                style: TextStylesApp.subTitle.copyWith(fontSize: 18),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                children: [
                  Text(
                    name,
                    style: TextStylesApp.subTitle.copyWith(fontSize: 18),
                  ),
                  const SizedBox(width: 8),
                  const CircleAvatar(
                    radius: 22,
                    backgroundColor: ColorsApp.terciary,
                    backgroundImage:
                        AssetImage('assets/images/img_profile.jpeg'),
                  ),
                ],
              ),
            ),
          ],
        );
}
