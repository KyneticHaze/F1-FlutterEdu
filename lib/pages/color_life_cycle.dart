import 'package:flutter/material.dart';

import 'color_change_state.dart';

class ColorLifeCycle extends StatefulWidget {
  const ColorLifeCycle({super.key});

  @override
  State<ColorLifeCycle> createState() => _ColorLifeCycleState();
}

class _ColorLifeCycleState extends State<ColorLifeCycle> {
  Color? _mainBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _changeMainBackgroundColor,
            icon: const Icon(Icons.clear),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ColorChange(initialColor: _mainBackgroundColor),
          )
        ],
      ),
    );
  }

  void _changeMainBackgroundColor() {
    setState(() {
      _mainBackgroundColor = Colors.purple;
    });
  }
}
