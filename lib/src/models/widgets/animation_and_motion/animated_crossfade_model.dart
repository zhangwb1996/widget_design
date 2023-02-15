///
/// File: \lib\src\models\widgets\animation_and_motion\animated_crossfade_model.dart
/// Project: widget_design
/// -----
/// Created Date: Wednesday, 2023-02-15 2:00:02 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Wednesday, 2023-02-15 6:15:36 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'animated_model.dart';

class AnimatedCrossFadeModel extends AnimatedModel {
  String _code = ' ';
  @override
  String get code => _code;
  @override
  void setCode() {
    _code = '''
    AnimatedCrossFade(
      duration: Duration(seconds: $duration),
      firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
      secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
      crossFadeState: clicked ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    )
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
