import 'package:flutter/material.dart';
import 'package:get_it_demo/app/screens/home_screen.dart';

import 'injection.dart';

// == PASSO 2: Assim como no GetIt, executar a função que dará o Trigger no processo de settar as dependências ==
void main() {
  configureInjection(Env.dev);
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
