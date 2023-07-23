import 'package:first_flutter_edu/pages/navigation/routePink_navigationPage.dart';
import 'package:flutter/material.dart';

class NavigationHomePage extends StatefulWidget {
  const NavigationHomePage({super.key});

  @override
  State<NavigationHomePage> createState() => _NavigationHomePageState();
}

class _NavigationHomePageState extends State<NavigationHomePage> {
  final PageMessages _messageOne = PageMessages();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Sayfalar arası geçiş'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Page'),
            ElevatedButton(
              onPressed: () {
                // Navigator sınıfı sayfaya başka bir sayfa yapıştırma ve kaldırma isteğinden gelen bir sınıftır.
                // Route ise bu yapıştırma işleminde neyi yapıştıracağını belirtme durumudur. Route'ı oluşturma MaterialPageRoute'un işidir.

                // Navigation.push(context, route); => context bir widget'ın widget ağacının neresinde olduğunu bilmesi için yazılan bir kod.

                Route route = MaterialPageRoute(
                  builder: (context) => RoutePinkPage(metin: _messageOne.messagesPinkPage),
                );
                // Route sınıfından bir route değişkeni oluşturduk ki bize push methodunda route abstract class'ından bir parametre istemişlerdi. Route oluşturmak için MaterialPageRoute sınıfı kullanılır. Bu sınıfın da zorunlu property'si builder'dır.builder sınıfı da değer olarak context bir değer alır.

                Navigator.of(context).push(route);
              },
              child: const Text('Git => Route Pink'),
            ),
          ],
        ),
      ),
    );
  }
}

class PageMessages {
  String messagesPinkPage = 'Ana sayfadan diğer sayfaya bir adet mesaj var!';
}

// Class'lar ile ilgili mühim bir not:
// PageMessages _messages = PageMessages(); => Burada _messages değişkeninin önüne gelen sınıf değişkeni bu sınıfa çevirir. Ancak eşittirin karşısında yer alan PageMessages() ise bu class'ın contructor'ıdır. Contructor, class'ın field'indeki variable'leri barındırır ve yeri geldiğinde atandığı değişkenden ister. 
