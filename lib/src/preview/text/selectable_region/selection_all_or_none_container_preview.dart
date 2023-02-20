///
/// File: \lib\src\preview\text\selectable_region\selection_all_or_none_container_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Saturday, 2023-02-18 12:33:19 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Monday, 2023-02-20 9:05:13 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SelectionAllOrNoneContainerPreivew extends StatelessWidget {
  const SelectionAllOrNoneContainerPreivew({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: SelectionArea(
        child: Scaffold(
          appBar: AppBar(title: const Text(_title)),
          body: Center(
            child: SelectionAllOrNoneContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('Row 1'),
                  Text('Row 2'),
                  Text('Row 3'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SelectionAllOrNoneContainer extends StatefulWidget {
  const SelectionAllOrNoneContainer({super.key, required this.child});

  final Widget child;

  @override
  State<StatefulWidget> createState() => _SelectionAllOrNoneContainerState();
}

class _SelectionAllOrNoneContainerState
    extends State<SelectionAllOrNoneContainer> {
  final SelectAllOrNoneContainerDelegate delegate =
      SelectAllOrNoneContainerDelegate();

  @override
  void dispose() {
    delegate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SelectionContainer(
      delegate: delegate,
      child: widget.child,
    );
  }
}

class SelectAllOrNoneContainerDelegate
    extends MultiSelectableSelectionContainerDelegate {
  Offset? _adjustedStartEdge;
  Offset? _adjustedEndEdge;
  bool _isSelected = false;

  // This method is called when newly added selectable is in the current
  // selected range.
  @override
  void ensureChildUpdated(Selectable selectable) {
    if (_isSelected) {
      dispatchSelectionEventToChild(
          selectable, const SelectAllSelectionEvent());
    }
  }

  @override
  SelectionResult handleSelectWord(SelectWordSelectionEvent event) {
    // Treat select word as select all.
    return handleSelectAll(const SelectAllSelectionEvent());
  }

  @override
  SelectionResult handleSelectionEdgeUpdate(SelectionEdgeUpdateEvent event) {
    final Rect containerRect =
        Rect.fromLTWH(0, 0, containerSize.width, containerSize.height);
    final Matrix4 globalToLocal = getTransformTo(null)..invert();
    final Offset localOffset =
        MatrixUtils.transformPoint(globalToLocal, event.globalPosition);
    final Offset adjustOffset =
        SelectionUtils.adjustDragOffset(containerRect, localOffset);
    if (event.type == SelectionEventType.startEdgeUpdate) {
      _adjustedStartEdge = adjustOffset;
    } else {
      _adjustedEndEdge = adjustOffset;
    }
    // Select all content if the selection rect intercepts with the rect.
    if (_adjustedStartEdge != null && _adjustedEndEdge != null) {
      final Rect selectionRect =
          Rect.fromPoints(_adjustedStartEdge!, _adjustedEndEdge!);
      if (!selectionRect.intersect(containerRect).isEmpty) {
        handleSelectAll(const SelectAllSelectionEvent());
      } else {
        super.handleClearSelection(const ClearSelectionEvent());
      }
    } else {
      super.handleClearSelection(const ClearSelectionEvent());
    }
    return SelectionUtils.getResultBasedOnRect(containerRect, localOffset);
  }

  @override
  SelectionResult handleClearSelection(ClearSelectionEvent event) {
    _adjustedStartEdge = null;
    _adjustedEndEdge = null;
    _isSelected = false;
    return super.handleClearSelection(event);
  }

  @override
  SelectionResult handleSelectAll(SelectAllSelectionEvent event) {
    _isSelected = true;
    return super.handleSelectAll(event);
  }
}
