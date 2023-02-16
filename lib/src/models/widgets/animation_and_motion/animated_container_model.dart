///
/// File: \lib\src\models\widgets\animation_and_motion\animated_container_model.dart
/// Project: widget_design
/// -----
/// Created Date: Wednesday, 2023-02-15 2:00:02 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 10:04:10 am
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:widget_design/src/models/properties/default/widget.dart';

import 'base/animated_model.dart';

class AnimatedContainerModel extends AnimatedModel {
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
          child: Center(
            child: AnimatedContainer(
              width: selected ? 200.0 : 100.0,
              height: selected ? 100.0 : 200.0,
              color: selected ? Colors.red : Colors.blue,
              alignment: selected ? Alignment.center : $alignment,
              duration: Duration(seconds: $duration),
              curve: ${CurveMap.mapCurve.keys.firstWhere((k) => CurveMap.mapCurve[k] == curve)}
              child: const FlutterLogo(size: 75),
            ),
          ), 
        );
''';
    notifyListeners();
  }

//   /// AlignmentGeometry
//   AlignmentGeometry _alignment = Alignment.topLeft;

//   /// Duration,
//   int _duration = 1;

//   /// Curves
//   Curve _curve = Curves.easeInCubic;

//   bool selected = false;

//   String _code = ' ';
//   String get code => _code;
//   void setCode() {
//     _code = '''
//     return GestureDetector(
//       onTap: () {
//         selected=!selected;
//       },
//       child: AnimatedAlign(
//         alignment:selected? Alignment.topRight:$alignment,
//         duration: $duration,
//         curve: ${CurveMap.mapCurve.keys.firstWhere((k) => CurveMap.mapCurve[k] == _curve)},
//         child: const FlutterLogo(size: 50.0),
//       ),
//     );
// ''';
//     notifyListeners();
//   }

//   void setSelected() {
//     selected = !selected;
//     notifyListeners();
//   }

//   AlignmentGeometry get alignment => _alignment;
//   set alignment(value) => {
//         _alignment = value,
//         notifyListeners(),
//       };

//   int get duration => _duration;
//   set duration(int value) {
//     _duration = value;
//     notifyListeners();
//   }

//   Curve get curve => _curve;
//   set curve(v) => {
//         _curve = v,
//         notifyListeners(),
//       };
}
