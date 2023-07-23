import 'package:flutter/material.dart';

class NavigationRememberV2 extends StatelessWidget {
  const NavigationRememberV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Route Green Page'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back Route'),
            )
          ],
        ),
      ),
    );
  }
}
