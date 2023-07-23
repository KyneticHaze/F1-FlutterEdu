import 'package:first_flutter_edu/pages/navigation/routeBlue_navigationPage.dart';
import 'package:first_flutter_edu/pages/navigation/routeGreen_navigationPage.dart';
import 'package:flutter/material.dart';

class RoutePinkPage extends StatefulWidget {
  const RoutePinkPage({super.key, required this.metin});

  final String metin;
  // String? şu demektir. metin yerine gelecek deer nullable olabilir. Yani metin yerine yazılacak yere bir şey yazmayabilirler veya null yazabilirler. Bu durumu bu yazım şekli ile belirtiriz.

  @override
  State<RoutePinkPage> createState() => _RoutePinkPageState();
}

class _RoutePinkPageState extends State<RoutePinkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(title: const Text('Sayfalar arası geçiş')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Route Pink'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' ${widget.metin}',
                style: const TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Route newRoute = MaterialPageRoute(
                  builder: (context) => Column(
                    children: const [
                      Expanded(child: RouteGreenPage()),
                      Expanded(child: RouteBluePage()),
                    ],
                  ),
                );

                Navigator.of(context).pushAndRemoveUntil(
                  newRoute,
                  (routeFunc) => false,
                );
                // pushAndRemoveUntil() methodu diğer sayfaya gider ama o sayfadan geri dönmeyi veya bir sonraki sayfaya ilerlemeyi engeller.
              },
              child: const Text('Git => Route Green'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                // Navigator'da kaldırma işlemi pop işlevi ile olur. İçinde yazılan da mevcut sayfayı kaldır demek.
              },
              child: const Text('Geri Dön'),
            )
          ],
        ),
      ),
    );
  }
}
