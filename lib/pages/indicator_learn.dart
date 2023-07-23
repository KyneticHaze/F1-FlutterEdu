import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          color: Colors.amber,
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
        toolbarOpacity: 0.6,
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: CircularProgressIndicator(
                strokeWidth: 12,
                color: Colors.red,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.lightBlue,
        title: const Text('List Tile App'),
        leading: const Icon(
          Icons.chevron_left,
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          LinearProgressIndicator(
            minHeight: 5,
            backgroundColor: Colors.black38,
            color: Colors.amber,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: CircularProgressIndicator(
              backgroundColor: Colors.black,
              color: Colors.red,
              strokeWidth: 8,
            ),
          ),
        ],
      )),
    );
  }
}
