import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/main_page.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationItem extends StatelessWidget {
  final VoidCallback onPressed;
  final String icon;
  final Menus current;
  final Menus name;
  const BottomNavigationItem(
      {super.key,
      required this.onPressed,
      required this.icon,
      required this.current,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          icon,
          colorFilter: ColorFilter.mode(
              current == name
                  ? const Color.fromARGB(255, 0, 0, 0)
                  : Colors.black.withOpacity(0.9),
              BlendMode.srcIn),
        ));
  }
}
