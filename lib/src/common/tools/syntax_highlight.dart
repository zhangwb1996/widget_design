///
/// File: \lib\src\common\tools\syntax_highlight.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 7:16:31 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Tuesday, 2023-02-14 7:45:34 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
// import 'package:flutter_highlight/themes/ascetic.dart';
import 'package:flutter_highlight/themes/github.dart';

class SyntaxHighlight extends StatelessWidget {
  final String code;
  const SyntaxHighlight({
    super.key,
    required this.code,
  });

  @override
  Widget build(BuildContext context) {
    return HighlightView(
      // The original code to be highlighted
      code,

      // Specify language
      // It is recommended to give it a value for performance
      language: 'dart',

      // Specify highlight theme
      // All available themes are listed in `themes` folder
      theme: githubTheme,

      // Specify padding
      padding: const EdgeInsets.all(12),

      // Specify text style
      textStyle: const TextStyle(
        // fontFamily: 'My awesome monospace font',
        fontSize: 16,
      ),
    );
  }
}
