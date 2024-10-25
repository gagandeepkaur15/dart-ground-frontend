import 'package:dart_ground_frontend/screens/home/widgets/code_section.dart';
import 'package:dart_ground_frontend/screens/home/widgets/output_section.dart';
import 'package:dart_ground_frontend/screens/home/widgets/stats_section.dart';
import 'package:dart_ground_frontend/theme/app_theme.dart';
import 'package:dart_ground_frontend/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const path = '/home';
  static const name = 'Home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double _leftFraction = 0.5;
  double _topFraction = 0.8;

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    setState(() {
      _leftFraction =
          (_leftFraction + details.delta.dx / MediaQuery.of(context).size.width)
              .clamp(0.1, 0.9);
    });
  }

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    setState(() {
      _topFraction = (_topFraction +
              details.delta.dy / (MediaQuery.of(context).size.height * 0.5))
          .clamp(0.1, 0.9);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      appBar: const DartGroundAppBar(),
      body: Row(
        children: [
          CodeSection(leftFraction: _leftFraction),
          GestureDetector(
            onHorizontalDragUpdate: _onHorizontalDragUpdate,
            child: Container(
              width: 10.0,
              color: Colors.grey,
            ),
          ),
          Expanded(
            flex: ((1 - _leftFraction) * 100).round(),
            child: Column(
              children: [
                OutputSection(topFraction: _topFraction),
                GestureDetector(
                  onVerticalDragUpdate: _onVerticalDragUpdate,
                  child: Container(
                    height: 10.0,
                    color: Colors.grey,
                  ),
                ),
                StatsSection(topFraction: _topFraction),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
