import 'package:flutter/material.dart';

// 1
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomState createState() => _HomState();
}

class _HomState extends State<Home> {
  // TODO: Add state variables and fuctions

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          // 2
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: Show selected tab
      body: Center(
        child: Text('Let\'s get cooking 👩‍🍳',
            // 3
            style: Theme.of(context).textTheme.headline1),
      ),
      // TODO: Add bottom navigation bar
    );
  }
}
