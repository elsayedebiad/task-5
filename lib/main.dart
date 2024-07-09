import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/land.dart';

void main (){
  runApp(const Quiz());
}

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
