import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../view/home/home.dart';

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override 
  Widget build(context){
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      )
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}