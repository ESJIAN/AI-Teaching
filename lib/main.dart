import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabbed Interface Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用DefaultTabController创建TabController
    return DefaultTabController(
      length: 3, // 标签的数量
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabbed Interface Example'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.business)),
              Tab(icon: Icon(Icons.school)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.home, size: 100, color: Colors.blue),
            Icon(Icons.business, size: 100, color: Colors.red),
            Icon(Icons.school, size: 100, color: Colors.green),
          ],
        ),
      ),
    );
  }
}