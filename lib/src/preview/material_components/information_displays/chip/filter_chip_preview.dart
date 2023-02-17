///
/// File: \lib\src\preview\material_components\information_displays\chip\filter_chip_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 11:22:01 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 11:22:20 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

enum ExerciseFilter { walking, running, cycling, hiking }

class FilterChipPreview extends StatefulWidget {
  const FilterChipPreview({super.key});

  @override
  State<FilterChipPreview> createState() => _FilterChipExampleState();
}

class _FilterChipExampleState extends State<FilterChipPreview> {
  bool favorite = false;
  final List<String> _filters = <String>[];

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('FilterChip Sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Choose an execise', style: textTheme.labelLarge),
            const SizedBox(height: 5.0),
            Wrap(
              spacing: 5.0,
              children: ExerciseFilter.values.map((ExerciseFilter exercise) {
                return FilterChip(
                  label: Text(exercise.name),
                  selected: _filters.contains(exercise.name),
                  onSelected: (bool value) {
                    setState(() {
                      if (value) {
                        if (!_filters.contains(exercise.name)) {
                          _filters.add(exercise.name);
                        }
                      } else {
                        _filters.removeWhere((String name) {
                          return name == exercise.name;
                        });
                      }
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 10.0),
            Text('Looking for: ${_filters.join(', ')}')
          ],
        ),
      ),
    );
  }
}
