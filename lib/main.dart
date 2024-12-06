import 'package:bikin_apl/aplikasi.dart';
import 'package:bikin_apl/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/aplikasi',
        routes: {
          '/aplikasi': (context) => Aplicationn(),
          '/profile': (context) => Profile(),
        });
  }
}
