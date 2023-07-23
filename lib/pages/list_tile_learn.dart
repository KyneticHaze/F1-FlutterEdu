import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  final String appBarTitle = "List Tile Applications";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: const TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: _newBorderBox(),
              child: const _CustomListTile(),
            ),
          ),
        ],
      ),
    );
  }

  Border _newBorderBox() {
    return Border(
      top: _borderSized(),
      bottom: _borderSized(),
      right: _borderSized(),
      left: _borderSized(),
    );
  }

  BorderSide _borderSized() {
    return const BorderSide(
      strokeAlign: BorderSide.strokeAlignInside,
      // Border'ın hizalanmasını ayarlar : strokeAlign
      color: Colors.grey,
      width: 1.0,
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile();

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: SizedBox(height: 40, child: Icon(Icons.newspaper_outlined)),
      title: Text('New File!'),
      subtitle: Text('Create a new file now...'),
      trailing: Icon(Icons.chevron_right),
    );
  }
}
