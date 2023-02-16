///
/// File: \lib\src\preview\cupertino_ios_style_widgets\cupertino_slider_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 4:52:43 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 4:53:01 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/cupertino.dart';

class CupertinoSliderPreview extends StatelessWidget {
  const CupertinoSliderPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoSliderExample(),
    );
  }
}

class CupertinoSliderExample extends StatefulWidget {
  const CupertinoSliderExample({super.key});

  @override
  State<CupertinoSliderExample> createState() => _CupertinoSliderExampleState();
}

class _CupertinoSliderExampleState extends State<CupertinoSliderExample> {
  double _currentSliderValue = 0.0;
  String? _sliderStatus;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoSlider Sample'),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Display the current slider value.
            Text('$_currentSliderValue'),
            CupertinoSlider(
              key: const Key('slider'),
              value: _currentSliderValue,
              // This allows the slider to jump between divisions.
              // If null, the slide movement is continuous.
              divisions: 5,
              // The maximum slider value
              max: 100,
              activeColor: CupertinoColors.systemPurple,
              thumbColor: CupertinoColors.systemPurple,
              // This is called when sliding is started.
              onChangeStart: (double value) {
                setState(() {
                  _sliderStatus = 'Sliding';
                });
              },
              // This is called when sliding has ended.
              onChangeEnd: (double value) {
                setState(() {
                  _sliderStatus = 'Finished sliding';
                });
              },
              // This is called when slider value is changed.
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            Text(
              _sliderStatus ?? '',
              style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                    fontSize: 12,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
