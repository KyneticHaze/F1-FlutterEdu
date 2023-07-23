import 'package:flutter/material.dart';

class IkeaReDesignMiddlePage extends StatefulWidget {
  const IkeaReDesignMiddlePage({super.key});

  @override
  State<IkeaReDesignMiddlePage> createState() => _IkeaReDesignMiddlePageState();
}

class _IkeaReDesignMiddlePageState extends State<IkeaReDesignMiddlePage> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _deIncrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details',
          style: TextStyle(color: Colors.black54),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_outlined, color: ProjectButtonColors.buttonGreyColor),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: ProjectButtonColors.buttonGreyColor,
              ))
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/png/sofa.jpg',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 17.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Modern Sofa',
                      style: TextStyle(
                        color: ProjectButtonColors.buttonGreyColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        width: 35,
                        height: 20,
                        color: ProjectButtonColors.badgeColor,
                        child: const Center(
                          child: Text(
                            'New',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Row(
                    children: [
                      const Text(
                        '4.0',
                        style: TextStyle(color: ProjectButtonColors.badgeColor),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Row(
                          children: const [
                            Icon(Icons.star, size: 20, color: ProjectButtonColors.badgeColor),
                            Icon(Icons.star, size: 20, color: ProjectButtonColors.badgeColor),
                            Icon(Icons.star, size: 20, color: ProjectButtonColors.badgeColor),
                            Icon(Icons.star, size: 20, color: ProjectButtonColors.badgeColor),
                            Icon(Icons.star_border, size: 20, color: ProjectButtonColors.badgeColor),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          '(170 Reviews)',
                          style: TextStyle(
                            fontSize: 12,
                            color: ProjectButtonColors.buttonGreyColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Product Details',
                  style: TextStyle(
                    fontSize: 17,
                    color: ProjectButtonColors.buttonGreyColor,
                  ),
                ),
                TextButton(
                  child: const Text(
                    'See More',
                    style: TextStyle(
                      color: ProjectButtonColors.badgeColor,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    color: ProjectButtonColors.buttonBackgroundColor,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: _deIncrementCounter,
                          icon: Container(
                            color: ProjectButtonColors.removeColor,
                            child: const Icon(
                              Icons.remove,
                              size: 18,
                            ),
                          ),
                        ),
                        Text('$_counter'),
                        IconButton(
                          onPressed: _incrementCounter,
                          icon: Container(
                            color: ProjectButtonColors.addColor,
                            child: const Icon(
                              Icons.add,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        ProjectButtonColors.badgeColor,
                      ),
                      minimumSize: MaterialStatePropertyAll(
                        Size(230, 50),
                      ),
                    ),
                    onPressed: () {},
                    child: SizedBox(
                      width: 180,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text('Add to Cart'),
                          Container(
                            color: Colors.white,
                            height: 25,
                            width: 1,
                          ),
                          const Text('115.000'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectButtonColors {
  static const buttonGreyColor = Colors.black54;
  static const badgeColor = Color(0xffde993a);
  static const buttonBackgroundColor = Color(0xffbbc3c9);
  static const addColor = Color(0xff7c878f);
  static const removeColor = Color(0xffebebeb);
}
