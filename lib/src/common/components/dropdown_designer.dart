///
/// File: \lib\src\common\components\dropdown_designer.dart
/// Project: widget_design
/// -----
/// Created Date: Monday, 2023-02-13 9:54:48 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Tuesday, 2023-02-14 4:06:23 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/animation_and_motion/widget.dart';

typedef TypeAlignmentGeometry = AlignmentGeometry;

class DropdownDesigner extends StatefulWidget {
  final List<dynamic> items;
  // final dynamic select;
  const DropdownDesigner({
    super.key,
    required this.items,
    // required this.select,
  });

  @override
  State<DropdownDesigner> createState() => _DropdownDesignerState();
}

class _DropdownDesignerState extends State<DropdownDesigner> {
  @override
  Widget build(BuildContext context) {
    debugPrint(
        "dropdown_designer items runtimeType: ${widget.items[0].runtimeType} ");
    switch (widget.items[0].runtimeType) {
      case Alignment:
        return alignmentDropdownBuilder();
      default:
        return Container();
    }

    // var alignment = context.select((AnimationPropertiesModel a) => a.alignment);
    // var curve = context.select((AnimationPropertiesModel a) => a.curve);
    // return Consumer<AnimationPropertiesModel>(
    //   builder: (context, animProperties, child) => DropdownButton<Curve>(
    //     value: curve,
    //     elevation: 16,
    //     style: const TextStyle(color: Colors.deepPurple),
    //     underline: Container(
    //       height: 2,
    //       color: Colors.deepPurpleAccent,
    //     ),
    //     onChanged: (Curve? value) {
    //       // This is called when the user selects an item.
    //       animProperties.curve = value!;
    //     },
    //     items: animProperties.listCurve
    //         .map<DropdownMenuItem<Curve>>((Curve value) {
    //       return DropdownMenuItem<Curve>(
    //         value: value,
    //         child: Text(value.toString()),
    //       );
    //     }).toList(),
    //   ),
    // );
  }

  Consumer<AnimationPropertiesModel> alignmentDropdownBuilder() {
    var selector = context.select((AnimationPropertiesModel a) => a.alignment);
    return Consumer<AnimationPropertiesModel>(
        builder: (context, animProperties, child) {
      return DropdownButton<TypeAlignmentGeometry>(
        value: selector,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (TypeAlignmentGeometry? value) {
          animProperties.alignment = value!;
        },
        items:
            widget.items.map<DropdownMenuItem<TypeAlignmentGeometry>>((value) {
          return DropdownMenuItem<TypeAlignmentGeometry>(
            value: value,
            child: Text(value.toString()),
          );
        }).toList(),
      );
    });
  }
}
