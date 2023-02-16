///
/// File: \lib\src\models\widgets\layout\base\layout_model.dart
/// Project: widget_design
/// -----
/// Created Date: Wednesday, 2023-02-15 2:03:22 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 9:55:40 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';
import 'package:widget_design/src/models/widgets/base_model.dart';

abstract class LayoutModel extends BaseModel {
  /// AlignmentGeometry
  AlignmentGeometry _alignment = Alignment.topLeft;
  @override
  AlignmentGeometry get alignment => _alignment;
  @override
  set alignment(value) => {
        _alignment = value,
        notifyListeners(),
      };

  /// width,
  double _width = 120;
  @override
  double get width => _width;
  @override
  set width(double value) {
    _width = value;
    notifyListeners();
  }

  /// height,
  double _height = 120;
  @override
  double get height => _height;
  @override
  set height(double value) {
    _height = value;
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

  /// code
  String _code = ' ';
  @override
  String get code => _code;
  @override
  void setCode() {
    _code = '''  
    Center(
      child: Container(
        height: $height,
        width: $width,
        color: Colors.blue[50],
        child: const Align(
          alignment: $alignment,
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    )  
    ''';
    notifyListeners();
  }
}