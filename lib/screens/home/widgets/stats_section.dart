import 'package:dart_ground_frontend/providers/code_provider.dart';
import 'package:dart_ground_frontend/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StatsSection extends ConsumerStatefulWidget {
  const StatsSection({
    super.key,
    required double topFraction,
  }) : _topFraction = topFraction;

  final double _topFraction;

  @override
  ConsumerState<StatsSection> createState() => _StatsSectionState();
}

class _StatsSectionState extends ConsumerState<StatsSection> {
  @override
  Widget build(BuildContext context) {
    final codeResponse = ref.watch(codeResponseNotifierProvider);
    return Expanded(
      flex: ((1 - widget._topFraction) * 100).round(),
      child: Container(
        padding: const EdgeInsets.all(16),
        color: context.theme.scaffoldBackgroundColor,
        child: codeResponse.when(
          data: (codeResponse) => Align(
            alignment: Alignment.topLeft,
            child: Text(
              codeResponse != null
                  ? 'Execution Time: ${codeResponse.executionTime}\nMemory Used: ${codeResponse.memoryUsed}'
                  : 'No Stats Available',
              style: context.theme.textTheme.bodyMedium,
            ),
          ),
          loading: () => const Center(
            child: SizedBox(
                height: 40, width: 40, child: CircularProgressIndicator()),
          ),
          error: (error, st) => const Text('Failed to load stats'),
        ),
      ),
    );
  }
}
