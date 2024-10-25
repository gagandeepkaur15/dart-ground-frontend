import 'package:dart_ground_frontend/theme/app_theme.dart';
import 'package:flutter/material.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({
    super.key,
    required double topFraction,
  }) : _topFraction = topFraction;

  final double _topFraction;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: ((1 - _topFraction) * 100).round(),
      child: Container(
        color: context.theme.scaffoldBackgroundColor,
        child: const Center(
          child: Text(
            'Bottom Left Half',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
