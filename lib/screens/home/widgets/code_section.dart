import 'package:dart_ground_frontend/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:highlight/languages/dart.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';

class CodeSection extends StatefulWidget {
  const CodeSection({
    super.key,
    required double leftFraction,
  }) : _leftFraction = leftFraction;

  final double _leftFraction;

  @override
  State<CodeSection> createState() => _CodeSectionState();
}

class _CodeSectionState extends State<CodeSection> {
  late CodeController codeController;

  void _onTextChanged(String text) {
    int cursorPosition = codeController.selection.baseOffset;

    if (text.endsWith('(') || text.endsWith('[') || text.endsWith('{')) {
      String closingBracket = _getClosingBracket(text[text.length - 1]);
      codeController.text += closingBracket;
      codeController.selection = TextSelection.fromPosition(
        TextPosition(offset: cursorPosition),
      );
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

  @override
  void initState() {
    super.initState();
    codeController = CodeController(
      text: '',
      language: dart,
    );
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
              child: SingleChildScrollView(
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
              child: FilledButton(
                onPressed: () {},
                child: const Text('Run'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
