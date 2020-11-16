import 'package:flutter/material.dart';
import 'package:go_rollings/src/pages/get_started_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Go Rollings!',
      initialRoute: 'get_started',
      routes: {
        'get_started' : (context) => GetStartedPage(),
      },
    );
  }
}