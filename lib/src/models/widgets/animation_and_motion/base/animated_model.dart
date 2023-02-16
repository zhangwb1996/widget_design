///
/// File: \lib\src\models\widgets\animation_and_motion\animated_model.dart
/// Project: widget_design
/// -----
/// Created Date: Wednesday, 2023-02-15 2:03:22 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 9:57:39 am
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';
import 'package:widget_design/src/models/properties/default/widget.dart';

abstract class AnimatedModel extends ChangeNotifier {
  /// AlignmentGeometry
  AlignmentGeometry _alignment = Alignment.topLeft;
  AlignmentGeometry get alignment => _alignment;
  set alignment(value) => {
        _alignment = value,
        notifyListeners(),
      };

  /// Duration,
  int _duration = 1;
  int get duration => _duration;
  set duration(int value) {
    _duration = value;
    notifyListeners();
  }

  /// Curves
  Curve _curve = Curves.easeInCubic;
  Curve get curve => _curve;
  set curve(v) => {
        _curve = v,
        notifyListeners(),
      };

  /// interaction
  bool selected = false;
  void setSelected() {
    selected = !selected;
    notifyListeners();
  }

  /// opacity
  double _opacityLevel = 1.0;
  get opacityLevel => _opacityLevel;
  set opacityLevel(value) => {
        _opacityLevel = value,
        notifyListeners(),
      };

  String _code = ' ';
  String get code => _code;
  void setCode() {
    _code = '''  
    return GestureDetector(
      onTap: () {
        selected=!selected;
      },
      child: AnimatedAlign(
        alignment:selected? Alignment.topRight:$alignment,
        duration: $duration,
        curve: ${CurveMap.mapCurve.keys.firstWhere((k) => CurveMap.mapCurve[k] == _curve)},
        child: const FlutterLogo(size: 50.0),
      ),
    );   
''';
    notifyListeners();
  }
}
