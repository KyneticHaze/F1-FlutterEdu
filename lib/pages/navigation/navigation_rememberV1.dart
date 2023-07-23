import 'package:flutter/material.dart';

import 'navigation_rememberV2.dart';

class NavigationRemember extends StatelessWidget {
  const NavigationRemember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Route Main Page'),
            ElevatedButton(
              onPressed: () {
                Route route = MaterialPageRoute(
                  builder: (context) => const NavigationRememberV2(),
                );

                Navigator.of(context).push(route);
              },
              child: const Text('Route Main Page'),
            )
          ],
        ),
      ),
    );
  }
}
