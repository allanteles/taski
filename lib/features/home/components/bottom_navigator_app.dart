import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../../core/themes/colors_app.dart';

class BottomNavigatorApp extends StatelessWidget {
  final selectColor = ColorsApp.primary;
  final unselectColor = ColorsApp.secondary;

  const BottomNavigatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      elevation: 0,
      backgroundColor: ColorsApp.background,
      indicatorColor: Colors.transparent,
      destinations: [
        NavigationDestination(
          icon: NavButton(
            icon: HugeIcons.strokeRoundedCheckList,
            label: 'Todo',
            color: unselectColor,
          ),
          selectedIcon: NavButton(
            icon: HugeIcons.strokeRoundedCheckList,
            label: 'Todo',
            color: selectColor,
          ),
          label: '',
        ),
        NavigationDestination(
          selectedIcon: NavButton(
            icon: HugeIcons.strokeRoundedPlusSignSquare,
            label: 'Create',
            color: selectColor,
          ),
          icon: NavButton(
            icon: HugeIcons.strokeRoundedPlusSignSquare,
            label: 'Create',
            color: unselectColor,
          ),
          label: '',
        ),
        NavigationDestination(
          selectedIcon: NavButton(
            icon: HugeIcons.strokeRoundedSearch01,
            label: 'Search',
            color: selectColor,
          ),
          icon: NavButton(
            icon: HugeIcons.strokeRoundedSearch01,
            label: 'Search',
            color: unselectColor,
          ),
          label: '',
        ),
        NavigationDestination(
          selectedIcon: NavButton(
            icon: HugeIcons.strokeRoundedCheckmarkSquare01,
            label: 'Done',
            color: selectColor,
          ),
          icon: NavButton(
            icon: HugeIcons.strokeRoundedCheckmarkSquare01,
            label: 'Done',
            color: unselectColor,
          ),
          label: '',
        ),
      ],
    );
  }
}

class NavButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const NavButton({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}
