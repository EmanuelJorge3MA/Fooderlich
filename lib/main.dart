import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Create theme
    final theme = FooderlichTheme.dark();
    // Apply Home widget

    // 3
    return MaterialApp(
      // Add theme
      theme: theme,
      title: 'Fooderlich',
      // 4
      home: Scaffold(
        // Style the title
        appBar: AppBar(
          title: Text(
            'Fooderlich',
            style: theme.textTheme.headline6,
          ),
        ),
        // Style the body text
        body: Center(
          child: Text('Let\'s get cooking 👩‍🍳',
              style: theme.textTheme.headline1),
        ),
      ),
    );
  }
}
