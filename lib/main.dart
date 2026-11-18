import 'package:flutter/material.dart';
import 'package:flutter_app/counter/cp.dart';
import 'package:flutter_app/counter/page2.dart';
import 'package:flutter_app/counter/page3.dart';
import 'package:flutter_app/form/page1.dart';
import 'package:flutter_app/keranjang/katalog_page.dart';
import 'package:flutter_app/keranjang/keranjang_page.dart';
import 'package:flutter_app/keranjang/keranjang_provider.dart';
import 'package:flutter_app/resto/menu_resto_page.dart';
import 'package:flutter_app/resto/nota_pesanan_page.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Page1(),
      routes: {
        '/': (context) => MenuRestoPage(),
        '/keranjang': (context) => NotaPesananPage(),
      },
      initialRoute: '/',
    );
  }
}

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => KeranjangProvider()),
      ],
      child: MyApp(),
    ),
  );
}
