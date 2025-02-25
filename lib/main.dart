import 'package:flutter/material.dart';
import 'package:to_do/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  //init the Hive
  await Hive.initFlutter();

  //Open a box
  var box = await Hive.openBox('myBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}
