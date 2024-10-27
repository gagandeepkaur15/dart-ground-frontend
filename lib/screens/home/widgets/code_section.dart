import 'package:dart_ground_frontend/providers/code_provider.dart';
import 'package:dart_ground_frontend/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:highlight/languages/dart.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;

class CodeSection extends ConsumerStatefulWidget {
  const CodeSection({
    super.key,
    required double leftFraction,
  }) : _leftFraction = leftFraction;

  final double _leftFraction;

  @override
  ConsumerState<CodeSection> createState() => _CodeSectionState();
}

class _CodeSectionState extends ConsumerState<CodeSection> {
  late CodeController codeController;

  void _onTextChanged(String text) {
    int cursorPosition = codeController.selection.baseOffset;

    if (cursorPosition > 0 && cursorPosition <= text.length) {
      final lastChar = text[cursorPosition - 1];

      if (lastChar == '(' || lastChar == '[' || lastChar == '{') {
        String closingBracket = _getClosingBracket(lastChar);

        codeController.text = text.substring(0, cursorPosition) +
            closingBracket +
            text.substring(cursorPosition);

        codeController.selection =
            TextSelection.fromPosition(TextPosition(offset: cursorPosition));
      }
    }
  }

  String _getClosingBracket(String openingBracket) {
    switch (openingBracket) {
      case '(':
        return ')';
      case '{':
        return '}';
      case '[':
        return ']';
      default:
        return '';
    }
  }

  void _downloadCode() async {
    final code = codeController.text;
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/code.dart';
    final file = io.File(filePath);
    await file.writeAsString(code);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Code saved to $filePath')),
    );
  }

  @override
  void initState() {
    super.initState();
    codeController = CodeController(
      text: '',
      language: dart,
    );
  }

  @override
  void dispose() {
    codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: (widget._leftFraction * 100).round(),
      child: Container(
        color: context.theme.scaffoldBackgroundColor,
        child: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CodeTheme(
                  data: CodeThemeData(styles: monokaiSublimeTheme),
                  child: CodeField(
                    onChanged: _onTextChanged,
                    controller: codeController,
                    textStyle: context.theme.textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Row(
                children: [
                  FilledButton(
                    onPressed: () async {
                      if (codeController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text('Please write the code to execute')));
                      } else {
                        ref
                            .read(codeResponseNotifierProvider.notifier)
                            .executeCode(codeController.text)
                            .then((_) {});
                      }
                    },
                    child: const Text('Run'),
                  ),
                  GestureDetector(
                    onTap: _downloadCode,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: context.theme.primaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.download,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
