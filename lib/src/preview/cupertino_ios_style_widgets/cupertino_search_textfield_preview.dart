///
/// File: \lib\src\preview\cupertino_ios_style_widgets\cupertino_search_textfield_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 4:50:56 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 4:51:13 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/cupertino.dart';

class CupertinoSearchTextFieldPreview extends StatelessWidget {
  const CupertinoSearchTextFieldPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: SearchTextFieldExample(),
    );
  }
}

class SearchTextFieldExample extends StatefulWidget {
  const SearchTextFieldExample({super.key});

  @override
  State<SearchTextFieldExample> createState() => _SearchTextFieldExampleState();
}

class _SearchTextFieldExampleState extends State<SearchTextFieldExample> {
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController(text: 'initial text');
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoSearchTextField Sample'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CupertinoSearchTextField(
            controller: textController,
            placeholder: 'Search',
          ),
        ),
      ),
    );
  }
}
