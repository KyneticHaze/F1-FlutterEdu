import 'package:flutter/material.dart';

import 'navigation_homePage.dart';

class RouteBluePage extends StatefulWidget {
  const RouteBluePage({super.key});

  @override
  State<RouteBluePage> createState() => _RouteBluePageState();
}

class _RouteBluePageState extends State<RouteBluePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: const Text('Sayfalar arası geçiş')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Route Pink'),
            ElevatedButton(
              onPressed: () {
                Route oldRoute = MaterialPageRoute(
                  builder: (context) => const NavigationHomePage(),
                );

                Navigator.of(context).push(oldRoute);
              },
              child: const Text('Git => Main Route'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Geri Dön'),
            )
          ],
        ),
      ),
    );
  }
}
