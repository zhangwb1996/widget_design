///
/// File: \lib\src\models\widgets\base_model.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 9:36:58 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 1:37:43 pm
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
  double width = 120;
  // double _width = 120;
  // double get width => _width;
  // set width(double value) {
  //   _width = value;
  //   notifyListeners();
  // }

  /// height,
  double height = 120;
  // double _height = 120;
  // double get height => _height;
  // set height(double value) {
  //   _height = value;
  //   notifyListeners();
  // }

  /// AlignmentGeometry
  AlignmentGeometry alignment = Alignment.topLeft;
  // AlignmentGeometry _alignment = Alignment.topLeft;
  // AlignmentGeometry get alignment => _alignment;
  // set alignment(value) => {
  //       _alignment = value,
  //       notifyListeners(),
  //     };

  /// Duration,
  int duration = 1;
  // int _duration = 1;
  // int get duration => _duration;
  // set duration(int value) {
  //   _duration = value;
  //   notifyListeners();
  // }

  /// Curves
  Curve curve = Curves.easeInCubic;
  // Curve _curve = Curves.easeInCubic;
  // Curve get curve => _curve;
  // set curve(v) => {
  //       _curve = v,
  //       notifyListeners(),
  //     };

  /// interaction
  bool select = false;
  // bool _selected = false;
  // get select => _selected;
  // void setSelected() {
  //   _selected = !_selected;
  //   notifyListeners();
  // }

  /// opacity
  double opacityLevel = 1.0;
  // double _opacityLevel = 1.0;
  // get opacityLevel => _opacityLevel;
  // set opacityLevel(value) => {
  //       _opacityLevel = value,
  //       notifyListeners(),
  //     };

  /// code
  String code = ' ';
  // String _code = ' ';
  // String get code => _code;
  void setCode();

  /// aspectRatio
  // double aspectRatio = 16 / 9;
  // double _aspectRatio = 16 / 9;
  // double get aspectRatio => _aspectRatio;
  // set aspectRatio(double value) => {
  //       _aspectRatio = value,
  //       notifyListeners(),
  //     };

  /// baselineType
  // TextBaseline baselineType = TextBaseline.alphabetic;
  // TextBaseline _baselineType = TextBaseline.alphabetic;
  // TextBaseline get baselineType => _baselineType;
  // set baselineType(TextBaseline value) => {
  //       _baselineType = value,
  //       notifyListeners(),
  //     };

  /// baseline
  // double baseline = 100;
  // double _baseline = 100;
  // double get baseline => _baseline;
  // set baseline(double value) => {
  //       _baseline = value,
  //       notifyListeners(),
  //     };
}
