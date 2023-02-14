///
/// File: \lib\src\models\animation_and_motion\animation_properties.dart
/// Project: widget_design
/// -----
/// Created Date: Sunday, 2023-02-12 11:02:43 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Tuesday, 2023-02-14 9:51:57 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class AnimationPropertiesModel extends ChangeNotifier {
  /// AlignmentGeometry
  AlignmentGeometry _alignment = Alignment.topLeft;
  List<AlignmentGeometry> listAlignment = [
    Alignment.topLeft,
    Alignment.topCenter,
    Alignment.topRight,
    Alignment.centerLeft,
    Alignment.centerRight,
    Alignment.bottomLeft,
    Alignment.bottomCenter,
    Alignment.bottomRight,
  ];

  /// Duration,
  int _duration = 1;

  /// Curves
  Curve _curve = Curves.easeInCubic;
  Map<String, Curve> listCurve = {
    'Curves.linear': Curves.linear,
    'Curves.decelerate': Curves.decelerate,
    'Curves.fastLinearToSlowEaseIn': Curves.fastLinearToSlowEaseIn,
    'Curves.ease': Curves.ease,
    'Curves.easeIn': Curves.easeIn,
    'Curves.easeInToLinear': Curves.easeInToLinear,
    'Curves.easeInSine': Curves.easeInSine,
    'Curves.easeInQuad': Curves.easeInQuad,
    'Curves.easeInCubic': Curves.easeInCubic,
    'Curves.easeInQuart': Curves.easeInQuart,
    'Curves.easeInQuint': Curves.easeInQuint,
    'Curves.easeInExpo': Curves.easeInExpo,
    'Curves.easeInCirc': Curves.easeInCirc,
    'Curves.easeInBack': Curves.easeInBack,
    'Curves.easeOut': Curves.easeOut,
    'Curves.linearToEaseOut': Curves.linearToEaseOut,
    'Curves.easeOutSine': Curves.easeOutSine,
    'Curves.easeOutQuad': Curves.easeOutQuad,
    'Curves.easeOutCubic': Curves.easeOutCubic,
    'Curves.easeOutQuart': Curves.easeOutQuart,
    'Curves.easeOutQuint': Curves.easeOutQuint,
    'Curves.easeOutExpo': Curves.easeOutExpo,
    'Curves.easeOutCirc': Curves.easeOutCirc,
    'Curves.easeOutBack': Curves.easeOutBack,
    'Curves.easeInOut': Curves.easeInOut,
    'Curves.easeInOutSine': Curves.easeInOutSine,
    'Curves.easeInOutQuad': Curves.easeInOutQuad,
    'Curves.easeInOutCubic': Curves.easeInOutCubic,
    'Curves.easeInOutCubicEmphasized': Curves.easeInOutCubicEmphasized,
    'Curves.easeInOutQuart': Curves.easeInOutQuart,
    'Curves.easeInOutQuint': Curves.easeInOutQuint,
    'Curves.easeInOutExpo': Curves.easeInOutExpo,
    'Curves.easeInOutCirc': Curves.easeInOutCirc,
    'Curves.easeInOutBack': Curves.easeInOutBack,
    'Curves.fastOutSlowIn': Curves.fastOutSlowIn,
    'Curves.slowMiddle': Curves.slowMiddle,
    'Curves.bounceIn': Curves.bounceIn,
    'Curves.bounceOut': Curves.bounceOut,
    'Curves.bounceInOut': Curves.bounceInOut,
    'Curves.elasticIn': Curves.elasticIn,
    'Curves.elasticOut': Curves.elasticOut,
    'Curves.elasticInOut': Curves.elasticInOut,
  };

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
        curve: ${listCurve.keys.firstWhere((k) => listCurve[k] == _curve)},
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
