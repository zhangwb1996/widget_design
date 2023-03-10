///
/// File: \lib\src\models\widgets\layout\single_child\aspect_ratio_model.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 12:28:41 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 10:55:13 am
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///
import '../base/layout_model.dart';

class AspectRatioModel extends LayoutModel {
  String _code = ' ';
  @override
  String get code => _code;
  @override
  void setCode() {
    _code = '''
    Container(
      color: Colors.blue,
      alignment: Alignment.center,
      width: 100,
      height: 100,
      child: AspectRatio(
        aspectRatio: $aspectRatio,
        child: Container(
          width: ${height * aspectRatio},
          height:$height,
          color: Colors.green,
        ),
      ),
    ); 
    ''';
    notifyListeners();
  }
}
