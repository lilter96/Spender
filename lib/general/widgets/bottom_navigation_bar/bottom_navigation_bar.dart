import 'package:flutter/material.dart';

import 'package:test_app/features/wallets_screen/view/view.dart';


class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidget();
}

class _BottomNavigationBarWidget extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    WalletsScreen(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text('4'),
    Text('5')
  ];

    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: 'Timeline'),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Wallet'),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Budgets'),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            label: 'Activity'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: 'More')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 27, 208, 126),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped
      ),
    );
  }
}