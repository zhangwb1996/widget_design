///
/// File: \lib\src\preview\cupertino_ios_style_widgets\cupertino_switch_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 4:55:38 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 4:55:55 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/cupertino.dart';

class CupertinoSwitchPreview extends StatelessWidget {
  const CupertinoSwitchPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoSwitchExample(),
    );
  }
}

class CupertinoSwitchExample extends StatefulWidget {
  const CupertinoSwitchExample({super.key});

  @override
  State<CupertinoSwitchExample> createState() => _CupertinoSwitchExampleState();
}

class _CupertinoSwitchExampleState extends State<CupertinoSwitchExample> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoSwitch Sample'),
      ),
      child: Center(
        child: CupertinoSwitch(
          // This bool value toggles the switch.
          value: switchValue,
          activeColor: CupertinoColors.activeBlue,
          onChanged: (bool? value) {
            // This is called when the user toggles the switch.
            setState(() {
              switchValue = value ?? false;
            });
          },
        ),
      ),
    );
  }
}
