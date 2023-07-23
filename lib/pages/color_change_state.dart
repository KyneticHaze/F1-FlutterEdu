import 'package:flutter/material.dart';

class ColorChange extends StatefulWidget {
  const ColorChange({super.key, required this.initialColor});

  final Color? initialColor;

  @override
  State<ColorChange> createState() => _ColorChangeState();
}

// xx

class _ColorChangeState extends State<ColorChange> {
  Color? _backgroundColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorChange oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (_backgroundColor != widget.initialColor && widget.initialColor != null) {
      _changeMainBackgroundColor(widget.initialColor!);
    }
  }

  void _changeMainBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _changeColorItems,
        items: const [
          BottomNavigationBarItem(icon: _ColorContainer(pickColor: Colors.red), label: 'Red'),
          BottomNavigationBarItem(icon: _ColorContainer(pickColor: Colors.yellow), label: 'Yellow'),
          BottomNavigationBarItem(icon: _ColorContainer(pickColor: Colors.blue), label: 'Blue'),
        ],
      ),
    );
  }

  void _changeColorItems(int value) {
    if (value == ColorItems.red.index) {
      _changeBackgroundColor(Colors.red);
    } else if (value == ColorItems.yellow.index) {
      _changeBackgroundColor(Colors.yellow);
    } else if (value == ColorItems.blue.index) {
      _changeBackgroundColor(Colors.blue);
    }
  }

  void _changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }
}

enum ColorItems { red, yellow, blue } //Index'leri 0, 1, 2 diye ilerliyor.

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({required this.pickColor});

  final Color pickColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pickColor,
      height: 10,
      width: 10,
    );
  }
}
