///
/// File: \lib\src\models\widgets\animation_and_motion\base\animated_model.dart
/// Project: widget_design
/// -----
/// Created Date: Wednesday, 2023-02-15 2:03:22 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 9:47:08 pm
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
import 'package:widget_design/src/models/widgets/base_model.dart';

abstract class AnimatedModel extends BaseModel {
  /// AlignmentGeometry
  AlignmentGeometry _alignment = Alignment.topLeft;
  @override
  AlignmentGeometry get alignment => _alignment;
  @override
  set alignment(value) => {
        _alignment = value,
        notifyListeners(),
      };

  /// Duration,
  int _duration = 1;
  @override
  int get duration => _duration;
  @override
  set duration(int value) {
    _duration = value;
    notifyListeners();
  }

  /// Curves
  Curve _curve = Curves.easeInCubic;
  @override
  Curve get curve => _curve;
  @override
  set curve(v) => {
        _curve = v,
        notifyListeners(),
      };

  /// interaction
  bool _selected = false;
  get selected => _selected;
  @override
  void setSelected() {
    _selected = !_selected;
    notifyListeners();
  }

  /// opacity
  double _opacityLevel = 1.0;
  @override
  get opacityLevel => _opacityLevel;
  @override
  set opacityLevel(value) => {
        _opacityLevel = value,
        notifyListeners(),
      };

  String _code = ' ';
  @override
  String get code => _code;
  @override
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
