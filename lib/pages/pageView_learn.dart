import 'package:first_flutter_edu/language/language_items.dart';
import 'package:flutter/material.dart';

class PageViewLearn extends StatelessWidget {
  const PageViewLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.appBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: PageView(children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text(LanguageItems.firstPageText, style: TextStyle(color: Colors.amber)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(LanguageItems.secondPageText),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(LanguageItems.thirdPageText),
          ),
        ]),
      ),
    );
  }
}
