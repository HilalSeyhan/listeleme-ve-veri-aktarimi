import 'package:flutter/material.dart';
import 'package:sanatcilarim_app/sanatcilar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor: Colors.orange,
      ),
      home: SanatciListem(),
    );
  }
}

