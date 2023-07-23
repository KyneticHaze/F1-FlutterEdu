import 'package:first_flutter_edu/pages/navigation/routeOrange_navigationPage.dart';
import 'package:flutter/material.dart';

class RouteGreenPage extends StatefulWidget {
  const RouteGreenPage({super.key});

  @override
  State<RouteGreenPage> createState() => _RouteGreenPageState();
}

class _RouteGreenPageState extends State<RouteGreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: const Text('Sayfalar arası geçiş')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Route Green'),
            ElevatedButton(
              onPressed: () {
                Route orangeRoute = MaterialPageRoute(
                  builder: (context) => const RouteOrangePage(),
                );

                Navigator.of(context).pushReplacement(orangeRoute);
                // pushReplacement methodu sayfanın üstüne sayfa yapıştırmaz. Mevcut saydan sonraki sayfaya geçtiğimizde önceki sayfayı aradan kaldırır.
              },
              child: const Text('Git => Route Orange'),
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
