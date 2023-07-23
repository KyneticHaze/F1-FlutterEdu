import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.Builder()'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              color: Colors.red,
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                color: Colors.green,
                height: 300,
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    color: Colors.deepOrange,
                    width: 150,
                  ),
                  Container(
                    color: Colors.purple,
                    width: 150,
                  ),
                  Container(
                    color: Colors.amber,
                    width: 150,
                  ),
                  Container(
                    color: Colors.teal,
                    width: 150,
                  ),
                  Container(
                    color: Colors.grey,
                    width: 150,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                color: Colors.yellow,
                height: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                color: Colors.pink,
                height: 300,
              ),
            ),
            const _ListViewState(),
          ],
        ),
      ),
    );
  }
}

class _ListViewState extends StatefulWidget {
  const _ListViewState();

  @override
  State<_ListViewState> createState() => __ListViewStateState();
}

class __ListViewStateState extends State<_ListViewState> {
  @override
  void initState() {
    super.initState();
    print('ListViewState Active!');
  }

  @override
  void dispose() {
    super.dispose();
    print('Exitted ListViewState');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      height: 300,
      child: Center(child: Text('State', style: Theme.of(context).textTheme.displayMedium)),
    );
  }
}
