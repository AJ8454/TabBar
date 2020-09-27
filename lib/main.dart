import 'package:flutter/material.dart';
import 'package:tabs/bottomtab.dart';
import 'package:tabs/toptab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text(
                'Top Tabs',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.black,
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TopTabBar())),
            ),
            RaisedButton(
              child: Text(
                'Bottom Tabs',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              color: Colors.orange,
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomTabBar())),
            )
          ],
        ),
      ),
    );
  }
}
