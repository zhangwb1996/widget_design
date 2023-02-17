///
/// File: \lib\src\models\widgets\layout\single_child\baseline_text_model.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 11:35:12 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 11:36:17 am
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import '../base/layout_model.dart';

class BaselineModel extends LayoutModel {
  String _code = ' ';
  @override
  String get code => _code;
  @override
  void setCode() {
    _code = '''
      Container(
        color: Colors.blue,
        child: Baseline(
            baseline: $baseline,
            baselineType: $baselineType,
            child: const Text("baseline")),
      ),
    ''';
    notifyListeners();
  }
}
