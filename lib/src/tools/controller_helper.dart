///
/// File: \lib\src\tools\controller_helper.dart
/// Project: widget_design
/// -----
/// Created Date: Saturday, 2023-02-18 11:13:06 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Saturday, 2023-02-18 1:35:26 pm
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
      for (var line in file
          .readAsLinesSync()
          .where(
            (e) => RegExp(r"[c|C]ontroller").allMatches(e).length == 3,
          )
          .where((e) => e.split('').last == ";")) {
        origin = line;
      }

      if (origin.isEmpty || origin.length < 3 || origin.split('').last != ";") {
        continue;
      }

      fixed = '''$origin
  @override
  void dispose() {
    ${origin.split(RegExp(r'\s'))[4]}.dispose();
    super.dispose();
  }
  ''';

      String newFile = '';
      newFile = file.readAsLinesSync().join("\n");
      newFile = newFile.replaceAll(origin, fixed);
      file.writeAsStringSync('$newFile\n', mode: FileMode.writeOnly);
    }
  } catch (e) {
    print("exception");

    print(origin.length);
    print(RegExp(r"[c|C]ontroller").allMatches(origin));
    print(e);
  }
}
