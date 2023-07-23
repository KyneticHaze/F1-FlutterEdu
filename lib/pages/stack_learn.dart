import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    String message = 'Merhaba';
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Image.asset(
                  'assets/png/photo.jpeg',
                  fit: BoxFit.cover,
                  height: 400,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      StadiumBorder(),
                    ),
                    backgroundColor: MaterialStatePropertyAll(Colors.white12),
                  ),
                  child: const Text('Save The Picture'),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.save,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
          _OpacSmallButton(
            message: message,
          ),
          const _OpacBigRedButton(message: 'Big Button'),
        ],
      ),
    );
  }
}

// Buttonda border radius işlemi için RoundedRectangleBorder sınıfı lazım. Buttonun her yerini direkt ovalleştirmek için yazılan tek bir sınıf da kullanılabilir. => StadiumBorder(),

// Bir buton widgeti oluşturalım!

class _OpacSmallButton extends StatelessWidget {
  const _OpacSmallButton({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        minimumSize: MaterialStatePropertyAll(
          Size(120, 40),
        ),
      ),
      onPressed: () {},
      child: Text(message),
    );
  }
}

class _OpacBigRedButton extends StatelessWidget {
  const _OpacBigRedButton({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: const MaterialStatePropertyAll(
            StadiumBorder(),
          ),
          minimumSize: const MaterialStatePropertyAll(
            Size(300, 45),
          ),
          backgroundColor: MaterialStatePropertyAll(
            Theme.of(context).colorScheme.background,
          )),
      onPressed: () {},
      child: Text(message),
    );
  }
}
