///
/// File: \lib\src\common\components\dropdown_designer.dart
/// Project: widget_design
/// -----
/// Created Date: Monday, 2023-02-13 9:54:48 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Tuesday, 2023-02-14 10:26:26 pm
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

import 'package:widget_design/src/models/widgets/animation_and_motion/widget.dart';

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
      "dropdown_designer items runtimeType: ${widget.items[2].runtimeType}",
    );
    // TODO: pass  Type as a parameter
    switch (widget.items[2].runtimeType) {
      case Alignment:
        return alignmentDropdownBuilder(
          context.select((AnimatedAlignModel a) => a.alignment),
        );

      case Curve:
      case Cubic:
        return curveDropdownBuilder(
          context.select((AnimatedAlignModel a) => a.curve),
        );
      default:
        return Container();
    }

    // var alignment = context.select((AnimatedAlignModel a) => a.alignment);
    // var curve = context.select((AnimatedAlignModel a) => a.curve);
    // return Consumer<AnimatedAlignModel>(
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

  Consumer<AnimatedAlignModel> alignmentDropdownBuilder(dynamic selector) {
    return Consumer<AnimatedAlignModel>(
        builder: (context, animProperties, child) {
      return DropdownButton<dynamic>(
        value: selector,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (value) {
          animProperties.alignment = value;
        },
        items: widget.items.map<DropdownMenuItem<dynamic>>((value) {
          return DropdownMenuItem<dynamic>(
            value: value,
            child: Text(value.toString()),
          );
        }).toList(),
      );
    });
  }

  Consumer<AnimatedAlignModel> curveDropdownBuilder(dynamic selector) {
    return Consumer<AnimatedAlignModel>(
        builder: (context, animProperties, child) {
      return DropdownButton<dynamic>(
        value: selector,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (value) {
          animProperties.curve = value;
        },
        items: widget.items.map<DropdownMenuItem<dynamic>>((value) {
          return DropdownMenuItem<dynamic>(
            value: value,
            // TODO: show name of the curve instead of the function
            child: Text(value.toString()),
          );
        }).toList(),
      );
    });
  }
}
