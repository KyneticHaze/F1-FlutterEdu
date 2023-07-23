import 'package:flutter/material.dart';

class CardWidgetModel extends StatefulWidget {
  const CardWidgetModel({super.key});

  @override
  State<CardWidgetModel> createState() => _CardWidgetModelState();
}

class _CardWidgetModelState extends State<CardWidgetModel> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _items.length,
        padding: PaddingUtility.paddingHorizontal,
        itemBuilder: (context, index) {
          return _CollectionCard(
            model: _items[index],
          );
        },
      ),
    );
  }
}

class _CollectionCard extends StatelessWidget {
  const _CollectionCard({required CollectionModel model}) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility.paddingBottom,
      child: Padding(
        padding: PaddingUtility.paddingGeneral,
        child: Column(children: [
          Image.network(_model.imagePath),
          Padding(
            padding: PaddingUtility.paddingTop,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(_model.title, style: Theme.of(context).textTheme.titleLarge),
                Text('${_model.price} eth', style: Theme.of(context).textTheme.bodyLarge),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;
  CollectionModel({required this.imagePath, required this.title, required this.price});
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(imagePath: ProjectImages.ProjectImageOne, title: 'Mountain Parallax Sell', price: 14.99),
      CollectionModel(imagePath: ProjectImages.ProjectImageOne, title: 'Mountain Parallax Sell', price: 14.99),
      CollectionModel(imagePath: ProjectImages.ProjectImageOne, title: 'Mountain Parallax Sell', price: 14.99),
      CollectionModel(imagePath: ProjectImages.ProjectImageOne, title: 'Mountain Parallax Sell', price: 14.99),
    ];
  }
}

class ProjectImages {
  static const ProjectImageOne =
      'https://images.wallpaperscraft.com/image/single/mountains_moon_forest_139359_2780x2780.jpg';
}

class PaddingUtility {
  static const paddingHorizontal = EdgeInsets.symmetric(horizontal: 15.0);
  static const paddingGeneral = EdgeInsets.all(15.0);
  static const paddingTop = EdgeInsets.only(top: 10.0);
  static const paddingBottom = EdgeInsets.only(bottom: 20.0);
}
