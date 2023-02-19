///
/// File: \lib\src\common\tools\syntax_highlight.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 7:16:31 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Sunday, 2023-02-19 3:55:31 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
// import 'package:flutter_highlight/themes/ascetic.dart';
// import 'package:flutter_highlight/themes/github.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:highlight/languages/dart.dart';

class SyntaxHighlight extends StatelessWidget {
  final String code;

  const SyntaxHighlight({
    super.key,
    required this.code,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints.expand(height: 200),
      child: CodeTheme(
        data: CodeThemeData(styles: monokaiSublimeTheme),
        child: SingleChildScrollView(
          child: TextField(
            readOnly: true,
            controller: CodeController(
              text: code, // Initial code
              language: dart,
            ),
            maxLines: null,
          ),
        ),
      ),
    );
  }
}
