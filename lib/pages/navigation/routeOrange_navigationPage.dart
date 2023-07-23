import 'package:first_flutter_edu/pages/navigation/routeBlue_navigationPage.dart';
import 'package:flutter/material.dart';

class RouteOrangePage extends StatefulWidget {
  const RouteOrangePage({super.key});

  @override
  State<RouteOrangePage> createState() => _RouteOrangePageState();
}

class _RouteOrangePageState extends State<RouteOrangePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(title: const Text('Sayfalar arası geçiş')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Route Orange'),
            ElevatedButton(
              onPressed: () {
                Route blueRoute = MaterialPageRoute(
                  builder: (context) => const RouteBluePage(),
                );

                Navigator.of(context).push(blueRoute);
              },
              child: const Text('Git => Route Blue'),
            ),
            ElevatedButton(
              onPressed: () {
                // Üst üste sayfa katmanları koyduk ama geri gittiğimizde teker teker geri dönmelerini istemiyoruz.
                // Bir anda geri gitmek için de bir method mevcut.

                // O da:
                Navigator.popUntil(
                  context,
                  (route) => route.isFirst,
                  // isFirst bir bool method. Yani sayfayı kaldırdık ve eski sayfa ilk sayfa mı? Hayır. O zaman onu da kaldır. Diyerek ilk sayfaya kadar kaldırır.
                );
              },
              child: const Text('Geri Dön'),
            )
          ],
        ),
      ),
    );
  }
}
