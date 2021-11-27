import 'package:flutter/material.dart';
import 'package:live_share/ui/base_screens/app_base_view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBaseView(),
    );
  }
}