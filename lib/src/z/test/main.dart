///
/// File: \lib\src\tools\test\main.dart
/// Project: widget_design
/// -----
/// Created Date: Saturday, 2023-02-18 11:43:18 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Saturday, 2023-02-18 1:32:23 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

/// https://github.com/dart-lang/sdk/issues/51453
///
/// readAsLinesSync.where(...) returns a pair of unexpected circle brackets;
///
/// This tracker is for issues related to:
/// * Dart core libraries ("dart:async", "dart:io", etc.)
///
/// * Dart SDK Version (` 2.19.2 (stable)`)
/// * Windows_x64
///
/// > class.bak
/// ```
/// class _MyStatefulWidgetState extends State<MyRawScrollbarPreview1> {
///   final ScrollClass _firstClass = ScrollClass;
/// }
/// ```
/// > main.dart
/// ```dart
/// import 'dart:io';
///
/// void main(List<String> args) {
///   try {
///     var origin = File('./class.bak')
///         .readAsLinesSync()
///         .where(
///           (e) => RegExp(r"Class").allMatches(e).length == 3,
///         )
///         .toString();
///
///     /// the Expected result is: `  final ScrollClass _firstClass = ScrollClass;`;
///     ///
///     /// But it print: `(  final ScrollClass _firstClass = ScrollClass;)`,
///     /// there are a pair of unexpected circle brackets;
///     print(origin);
///
///     /// And here print: `()`;
///     print(origin.allMatches(File('./class.bak').toString()));
///   } catch (e) {
///     print(e);
///   }
/// }
/// ```

import 'dart:io';

void main(List<String> args) {
  try {
    var origin = File('./class.bak')
        .readAsLinesSync()
        .where(
          (e) => RegExp(r"Class").allMatches(e).length == 3,
        )
        .where((e) => e.split('').last == ";")
        .toString();

    var temp = origin.split('');
    temp.removeLast();
    temp.removeAt(temp.indexWhere((e) => e == '('));

    origin = temp.join();

    /// the Expected result is: `  final ScrollClass _firstClass = ScrollClass;`;
    ///
    /// But it print: `(  final ScrollClass _firstClass = ScrollClass;)`,
    /// there are a pair of extra circle brackets;
    print(origin);

    /// And here print: `()`;
    // print("ass".allMatches(File('./class.bak').toString()).first.toString());
    print(origin.allMatches(File('./class.bak').readAsStringSync().toString()));
    //     .toString());
  } catch (e) {
    print(e);
  }
}
