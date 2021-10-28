import 'package:pata_aqui/common/themes/app_bar.dart';

import 'package:flutter/material.dart';
import 'package:pata_aqui/pages/home_page.dart';
import 'package:pata_aqui/pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pata Aqui',
      debugShowCheckedModeBanner: false,
      theme: buildAppBarTheme(),
      home: HomePage(),
    );
  }
}
