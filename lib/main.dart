import 'package:flutter/material.dart';
import 'package:get_it_demo/app/screens/home_screen.dart';

import 'locator.dart';

// == PASSO 2: Executar a função que monta as instâncias do GetIt ==

void main() {
  setupGetItLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageView(),
    );
  }
}
