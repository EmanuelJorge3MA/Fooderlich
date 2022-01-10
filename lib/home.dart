import 'package:flutter/material.dart';
import 'card1.dart';

// 1
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomState createState() => _HomState();
}

class _HomState extends State<Home> {
  // Add state variables and fuctions
  // 7
  int _selectedIndex = 0;

  // 8
  static List<Widget> pages = <Widget>[
    // Replace with Card1
    // Container(color: Colors.red),
    const Card1(),
    // TODO: Replace with Card2
    Container(color: Colors.green),
    // TODO: Replace with Card3
    Container(color: Colors.blue)
  ];

  // 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      // Show selected tab
      body: pages[_selectedIndex],
      // Add bottom navigation bar
      // 4
      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // Set selected tab bar
        // 10
        currentIndex: _selectedIndex,
        // 11
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
