import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mad_flutter/Screens/SelectionScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const SelectionScreen(),
      //home: const Shopkeeper(),
    );
  }
}
