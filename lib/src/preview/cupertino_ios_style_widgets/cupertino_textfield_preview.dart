///
/// File: \lib\src\preview\cupertino_ios_style_widgets\cupertino_textfield_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 4:59:48 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 5:00:04 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/cupertino.dart';

class CupertinoTextFieldPreview extends StatelessWidget {
  const CupertinoTextFieldPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoTextFieldExample(),
    );
  }
}

class CupertinoTextFieldExample extends StatefulWidget {
  const CupertinoTextFieldExample({super.key});

  @override
  State<CupertinoTextFieldExample> createState() =>
      _CupertinoTextFieldExampleState();
}

class _CupertinoTextFieldExampleState extends State<CupertinoTextFieldExample> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: 'initial text');
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoTextField Sample'),
      ),
      child: Center(
          child: CupertinoTextField(
        controller: _textController,
      )),
    );
  }
}
