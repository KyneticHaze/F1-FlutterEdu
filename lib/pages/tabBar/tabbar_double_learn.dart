import 'package:flutter/material.dart';

class TabBarDoubleLearn extends StatelessWidget {
  const TabBarDoubleLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Primary and Secondary Tab'),
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            tabs: [
              Tab(
                text: 'Flights',
                icon: Icon(Icons.flight),
              ),
              Tab(
                text: 'Trips',
                icon: Icon(Icons.luggage),
              ),
              Tab(
                text: 'Explore',
                icon: Icon(Icons.explore),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            NestedBar('Flights'),
            NestedBar('Trips'),
            NestedBar('Explore'),
          ],
        ),
      ),
    );
  }
}

class NestedBar extends StatefulWidget {
  const NestedBar(this.outerTab, {super.key});

  final String outerTab;

  @override
  State<NestedBar> createState() => _NestedBarState();
}

class _NestedBarState extends State<NestedBar> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Overview'),
            Tab(text: 'Spesifications'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(child: Text('${widget.outerTab}: Overview Tab')),
              ),
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(child: Text('${widget.outerTab}: Spesifications Tab')),
              ),
            ],
          ),
        )
      ],
    );
  }
}
