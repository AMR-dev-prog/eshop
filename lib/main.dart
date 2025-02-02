import 'package:flutter/material.dart';
import 'package:flutter_application_2/Themes/light_mode.dart';
import 'package:flutter_application_2/models/shop.dart';
import 'package:flutter_application_2/pages/cartPage.dart';
import 'package:flutter_application_2/pages/introPage.dart';
import 'package:flutter_application_2/pages/shopePage.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    ChangeNotifierProvider(create: (context)=> Shop(),
    child: const MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Intropage(),
      theme: lightMode,
      routes: {
        '/introPage': (context)=>const Intropage(),
        '/cartPage': (context)=>const cartPage(),
        '/shopePage': (context)=>const shopePage()
      },
    );
  }
}

