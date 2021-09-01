import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfólio Vanessa',
      theme: ThemeData(
        primaryColor: Color(0xFF3F51B5),
        accentColor: Color(0xFF536DFE),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
