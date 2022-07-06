import 'package:asz/screens/splash/SplashImports.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Almarai',
      ),
      home: const SplashScreen(),
      builder: (context,child)=>Directionality(textDirection: TextDirection.rtl,child: child!,),
    );
  }
}

