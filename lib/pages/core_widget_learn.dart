import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CoreWidgetLearn extends StatelessWidget {
  const CoreWidgetLearn({super.key});

  final String _buttonLargeText = "Save a file";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Builder(
          builder: ((context) {
            return IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios_rounded),
            );
          }),
        ),
        title: const Text('Core App'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Center(
          child: Column(
            children: [
              _CoreButton(
                function: () {},
                text: _buttonLargeText,
              ),
              _CoreButton(
                function: () {},
                text: 'dasd',
              ),
              const _ProjectContainerOne(),
              // Bir container denedim ve onu yer kaplamaması için widget'a çevirdim.
            ],
          ),
        ),
      ),
    );
  }
}

class _ProjectContainerOne extends StatelessWidget {
  const _ProjectContainerOne();

  @override
  Widget build(BuildContext context) {
    return Container(
      // Burada container'in özelliklerini deniyorum.
      constraints: const BoxConstraints(
        maxHeight: 100,
        maxWidth: 400,
      ),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: MyColorsItems.puce,
      ),
      width: 200,
      height: 40,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'data',
          style: TextStyle(color: MyColorsItems.shamrock),
        ),
      ),
    );
  }
}

// Burada bir kaynak bileşen geliştireceğiz. Bu kaynak bileşen bize projemiz esnasında hız ve standart kazandıracak.

class _CoreButton extends StatelessWidget {
  const _CoreButton({
    required this.function,
    required this.text,
  });

  final void Function() function;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child: SizedBox(
        width: 200,
        child: Center(child: Text(text)),
      ),
    );
  }
}

// Bu, proje için basit bir renk sınıfı
class MyColorsItems {
  static const Color puce = Color(0xffCD939C);
  static const Color shamrock = Color(0xff43E58E);
  static const Color pictonBlue = Color(0xff43B2E5);
}
