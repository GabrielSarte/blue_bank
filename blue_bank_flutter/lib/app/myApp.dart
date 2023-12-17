import 'package:blue_bank_flutter/app/view/pages/homePage/homePage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blue Bank',
      theme: ThemeData(primarySwatch: Colors.blue, 
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white)
        )
      ),
      home: MyHomePage(),
    );
  }
}