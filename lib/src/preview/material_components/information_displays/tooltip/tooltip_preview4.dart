///
/// File: \lib\src\preview\material_components\information_displays\tooltip\tooltip_preview4.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 11:42:06 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Saturday, 2023-02-18 12:44:18 am
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class TooltipPreview4 extends StatelessWidget {
  const TooltipPreview4({super.key});

  static const String _title = 'Tooltip Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: TooltipSample(title: _title),
    );
  }
}

class TooltipSample extends StatelessWidget {
  const TooltipSample({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<TooltipState> tooltipkey = GlobalKey<TooltipState>();

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Tooltip(
          // Provide a global key with the "TooltipState" type to show
          // the tooltip manually when trigger mode is set to manual.
          key: tooltipkey,
          triggerMode: TooltipTriggerMode.manual,
          showDuration: const Duration(seconds: 1),
          message: 'I am a Tooltip',
          child: const Text('Tap on the FAB'),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Show Tooltip programmatically on button tap.
          tooltipkey.currentState?.ensureTooltipVisible();
        },
        label: const Text('Show Tooltip'),
      ),
    );
  }
}
