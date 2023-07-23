import 'package:flutter/material.dart';

class BorderBorderRadius extends StatelessWidget {
  const BorderBorderRadius({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: const [
            _HundredSized(
              decore: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(300.0),
                ),
              ),
            ),
            Padding(
              padding: ContainerPadding.paddingVerticalHalfUp,
              child: _HundredSized(
                decore: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(80.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: ContainerPadding.paddingVertical,
              child: _HundredSized(
                decore: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: ContainerPadding.paddingVertical,
              child: _HundredSized(
                  decore: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(80.0),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}

class _HundredSized extends StatelessWidget {
  const _HundredSized({required this.decore});

  final BoxDecoration decore;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decore,
      width: 150,
      height: 150,
    );
  }
}

class ContainerPadding {
  static const paddingVertical = EdgeInsets.symmetric(vertical: 10.0);
  static const paddingVerticalHalfUp = EdgeInsets.symmetric(vertical: 15.0);
}
