///
/// File: \lib\src\models\widgets\layout\single_child\boxfit_model.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 3:46:45 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 4:07:40 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import '../base/layout_model.dart';

class BoxFitModel extends LayoutModel {
  String _code = ' ';
  @override
  String get code => _code;
  @override
  void setCode() {
    _code = '''
    return Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.blue,
        child: Center(
              child: Container(
                height: 200,
                width: 150,
                color: Colors.red,
                child: FittedBox(
                  fit: $boxfit,
                  child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                ),
              ),
            ),
        ),
      );
    ''';
    notifyListeners();
  }
}
