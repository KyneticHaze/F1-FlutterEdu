import 'package:flutter/material.dart';

class IncrementButton extends StatefulWidget {
  const IncrementButton({super.key});

  @override
  State<IncrementButton> createState() => _IncrementButtonState();
}

class _IncrementButtonState extends State<IncrementButton> {
  int _counterValue = 0;

  // void _plusValue() {
  //   setState(() {
  //     _counterValue++;
  //   });
  // }

  // void _lessValue() {
  //   setState(() {
  //     _counterValue--;
  //   });
  // }

  _changeValue(bool isChange) {
    // if durumunda true olursa arttıracak, false olursa azaltacak
    if (isChange) {
      _counterValue++;
    } else {
      _counterValue--;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              _changeValue(true);
              // arttıracak
            },
            backgroundColor: Colors.blueGrey,
            child: const Icon(
              Icons.chevron_left,
              color: Colors.pink,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: FloatingActionButton(
              onPressed: () {
                _changeValue(false);
                // azaltacak
              },
              backgroundColor: Colors.blueGrey,
              child: const Icon(
                Icons.chevron_right,
                color: Colors.pink,
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Center(
        child: Text(_counterValue.toString()),
        // Normalde _counterValue int bir değer ve Text widget'i içine string alır bir uyuşmazlık var. Bu sorunu string'e çevirme metodu ile çözüyoruz.
      ),
    );
  }
}
