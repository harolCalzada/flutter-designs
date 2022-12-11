import 'package:flutter/material.dart';

import 'package:designs/src/screens/basic_design.dart';
import 'package:designs/src/screens/scroll_design.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'scroll_screen',
        routes: {
          'basic_design': (_) => BasicDesignScreen(),
          'scroll_screen': (_) => ScrollDesignScreen()
        });
  }
}

class _TempHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text('Hola mundo'), Text('Hola mundo')],
    );
  }
}
