///
/// File: \lib\src\tools\controller_helper.dart
/// Project: widget_design
/// -----
/// Created Date: Saturday, 2023-02-18 11:13:06 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Saturday, 2023-02-18 11:13:08 am
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'dart:io';

String path = '../preview/';
void main(List<String> args) {
  controllerHelper(path);
}

String origin = '';
String fixed = '';
void controllerHelper(String path) {
  try {
    Iterable<File> files = Directory(path)
        .listSync(recursive: true)
        .whereType<File>()
        .where((e) => e.path.split(RegExp(r'\\|/')).last != 'widget.dart');
    for (var file in files) {
      // print(file.path);

      origin = file
          .readAsLinesSync()
          .where(
            (e) => RegExp(r"[c|C]ontroller").allMatches(e).length == 3,
          )
          .toString();
      // print(origin);

      if (origin.isEmpty || origin.length < 3) {
        continue;
      }
      fixed = '''$origin\\n
                  \\t@override\\n
                  \\tvoid disposed() {\\n
                  \\t\t${origin.split(RegExp(r'\s'))[2]}.dispose();
                  \\t}super.dispose();
                  ''';

      String newFile = '';
      newFile = file.readAsLinesSync().toString().replaceAll(origin, fixed);
      print(newFile);
      file.writeAsStringSync(newFile);
    }
  } catch (e) {
    print(origin.length);
    print(RegExp(r"[c|C]ontainer").allMatches(origin));
    print(e);
  }
}
