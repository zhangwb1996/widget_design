///
/// File: \lib\src\common\components\number_designer.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 10:31:36 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Wednesday, 2023-02-15 3:31:59 pm
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

class NumberDesigner<T extends AnimatedModel> extends StatefulWidget {
  const NumberDesigner({super.key});

  @override
  State<NumberDesigner<T>> createState() => _NumberDesignerState<T>();
}

class _NumberDesignerState<T extends AnimatedModel>
    extends State<NumberDesigner<T>> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('NumberDesigner.build');

    /// context.select
    // var dur = context.select<AnimatedAlignModel, int>(
    //   (model) => model.duration,
    // );
    var dur = context.select(
      (T model) => model.duration,
    );
    controller.text = dur.toString();
    controller.selection =
        TextSelection.collapsed(offset: controller.text.length);
    // controller.
    // return TextField(
    //   controller: controller,
    //   onChanged: (v) {
    //     if (RegExp(r"\d+").allMatches(v, 0).isEmpty) {
    //       controller.text = '';
    //     }
    //     dur = int.parse(controller.text);
    //   },
    // );

    /// Selector<>
    // return Selector<AnimatedAlignModel, int>(
    //   selector: (_, animationProperties) => animationProperties.duration,
    //   builder: (context, data, child) => TextField(
    //     controller: controller,
    //     onChanged: (v) {
    //       if (RegExp(r"\d+").allMatches(v, 0).isEmpty) {
    //         controller.text = '';
    //       }
    //       data = int.parse(controller.text);
    //     },
    //   ),
    // );

    /// context.watch
    // var dur1 = context.watch<AnimatedAlignModel>();
    // controller.text = dur1.duration.toString();
    // return TextField(
    //   controller: controller,
    //   onChanged: (v) {
    //     if (RegExp(r"\d+").allMatches(v, 0).isEmpty) {
    //       controller.text = '';
    //     }
    //     dur1.duration = int.parse(controller.text);
    //   },
    // );

    /// Consumer
    return Consumer<T>(
      builder: (context, animationProperties, child) => TextField(
        controller: controller,
        onChanged: (v) {
          if (RegExp(r"^\d+$").allMatches(v, 0).isEmpty) {
            controller.text = '';
          }
          animationProperties.duration =
              int.parse(controller.text.isEmpty ? '0' : controller.text);
          animationProperties.setCode();
        },
      ),
    );
  }
}

// class NumberDesigner extends StatefulWidget {
//   const NumberDesigner({super.key});

//   @override
//   State<NumberDesigner> createState() => _NumberDesignerState();
// }

// class _NumberDesignerState extends State<NumberDesigner> {
//   final TextEditingController _controller = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _controller.addListener(
//       () {
//         final String text = _controller.text.toLowerCase();
//         _controller.value = _controller.value.copyWith(
//           text: text,
//           selection:
//               TextSelection(baseOffset: text.length, extentOffset: text.length),
//           composing: TextRange.empty,
//         );
//       },
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       padding: const EdgeInsets.all(6),
//       child: TextFormField(
//         controller: _controller,
//         decoration: const InputDecoration(border: OutlineInputBorder()),
//       ),
//     );
//   }
// }
