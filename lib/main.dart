import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:provider/provider.dart';

import 'general/widgets/widgets.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Spendy';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(
        secondaryContainer: Colors.white 
        ),
        textTheme:
            Theme.of(context).textTheme.apply(
              bodyColor: Colors.black, //<-- SEE HERE
              displayColor: Colors.black,
        ),
      ), 
      home: const BottomNavigationBarWidget(),
    );
  }
}