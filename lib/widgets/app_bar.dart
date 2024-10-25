import 'package:dart_ground_frontend/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DartGroundAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const DartGroundAppBar({super.key, this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.theme.cardColor,
      elevation: 0,
      title: Text(
        'Dart Ground',
        style: context.theme.textTheme.titleMedium!.copyWith(
          color: context.theme.primaryColor,
        ),
      ),
    );
  }
}
