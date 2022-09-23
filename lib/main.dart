import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:todo/pages/home_page.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('MyBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
