///
/// File: \lib\src\models\animation_and_motion\animation_properties.dart
/// Project: widget_design
/// -----
/// Created Date: Sunday, 2023-02-12 11:02:43 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Tuesday, 2023-02-14 4:20:21 pm
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
  List<Curve> listCurve = [
    Curves.linear,
    Curves.decelerate,
    Curves.fastLinearToSlowEaseIn,
    Curves.ease,
    Curves.easeIn,
    Curves.easeInToLinear,
    Curves.easeInSine,
    Curves.easeInQuad,
    Curves.easeInCubic,
    Curves.easeInQuart,
    Curves.easeInQuint,
    Curves.easeInExpo,
    Curves.easeInCirc,
    Curves.easeInBack,
    Curves.easeOut,
    Curves.linearToEaseOut,
    Curves.easeOutSine,
    Curves.easeOutQuad,
    Curves.easeOutCubic,
    Curves.easeOutQuart,
    Curves.easeOutQuint,
    Curves.easeOutExpo,
    Curves.easeOutCirc,
    Curves.easeOutBack,
    Curves.easeInOut,
    Curves.easeInOutSine,
    Curves.easeInOutQuad,
    Curves.easeInOutCubic,
    Curves.easeInOutCubicEmphasized,
    Curves.easeInOutQuart,
    Curves.easeInOutQuint,
    Curves.easeInOutExpo,
    Curves.easeInOutCirc,
    Curves.easeInOutBack,
    Curves.fastOutSlowIn,
    Curves.slowMiddle,
    Curves.bounceIn,
    Curves.bounceOut,
    Curves.bounceInOut,
    Curves.elasticIn,
    Curves.elasticOut,
    Curves.elasticInOut,
  ];

  bool selected = false;

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
