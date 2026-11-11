import 'package:flutter/material.dart';
import 'package:flutter_app/counter/cp.dart';
import 'package:flutter_app/counter/page2.dart';
import 'package:flutter_app/counter/page3.dart';
import 'package:flutter_app/form/page1.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Page1(),
      routes: {'/': (context) => Page2(), '/3': (context) => Page3()},
      initialRoute: '/',
    );
  }
}

void main(List<String> args) {
  runApp(ChangeNotifierProvider(create: (context) => Cp(), child: MyApp()));
}
