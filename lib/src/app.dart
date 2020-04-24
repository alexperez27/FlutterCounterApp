import 'package:flutter/material.dart';

import 'pages/contador_page.dart';
import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      //home: HomePage()
      home: ContadorPage());
  }
}
