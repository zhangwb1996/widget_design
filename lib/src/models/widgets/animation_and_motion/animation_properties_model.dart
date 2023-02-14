///
/// File: \lib\src\models\widgets\animation_and_motion\animation_properties.dart
/// Project: widget_design
/// -----
/// Created Date: Sunday, 2023-02-12 11:02:43 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Tuesday, 2023-02-14 11:11:35 pm
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
// import 'package:provider/provider.dart';

class AnimatedPropertiesModel extends ChangeNotifier {
  /// AlignmentGeometry
  AlignmentGeometry _alignment = Alignment.topLeft;

  /// Duration,
  int _duration = 1;

  /// Curves
  Curve _curve = Curves.easeInCubic;

  bool selected = false;

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

  void setSelected() {
    selected = !selected;
    notifyListeners();
  }

  AlignmentGeometry get alignment => _alignment;
  set alignment(value) => {
        _alignment = value,
        notifyListeners(),
      };

  int get duration => _duration;
  set duration(int value) {
    _duration = value;
    notifyListeners();
  }

  Curve get curve => _curve;
  set curve(v) => {
        _curve = v,
        notifyListeners(),
      };
}
