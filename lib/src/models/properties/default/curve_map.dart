///
/// File: \lib\src\models\properties\default\curve_map.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 10:06:55 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Tuesday, 2023-02-14 10:11:18 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///
import 'package:flutter/material.dart';

class CurveMap {
  static Map<String, Curve> mapCurve = {
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
}
