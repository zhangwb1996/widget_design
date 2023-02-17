///
/// File: \lib\src\models\widgets\base_model.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 9:36:58 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 2:03:11 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///
import 'package:flutter/material.dart';

abstract class BaseModel extends ChangeNotifier {
  /// width,
  // abstract double width;
  double _width = 120;
  double get width => _width;
  set width(double value) {
    _width = value;
    notifyListeners();
  }

  /// height,
  double _height = 120;
  double get height => _height;
  set height(double value) {
    _height = value;
    notifyListeners();
  }

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
  bool _selected = false;
  get selected => _selected;
  void setSelected() {
    _selected = !_selected;
    notifyListeners();
  }

  /// opacity
  double _opacityLevel = 1.0;
  get opacityLevel => _opacityLevel;
  set opacityLevel(value) => {
        _opacityLevel = value,
        notifyListeners(),
      };

  /// code
  String code = ' ';
  void setCode();

  /// heightFactor
  double _heightFactor = 1.0;
  get heightFactor => _heightFactor;
  set heightFactor(value) => {
        _heightFactor = value,
        notifyListeners(),
      };

  /// widthFactor
  double _widthFactor = 1.0;
  get widthFactor => _widthFactor;
  set widthFactor(value) => {
        _widthFactor = value,
        notifyListeners(),
      };
}
