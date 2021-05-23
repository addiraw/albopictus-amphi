import 'package:flutter/material.dart';

import 'constant/screen/screen.dart';
class Bmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
      AppBar(title: Text("BMI",

      
        style: TextStyle(color: Colors.white38)), ),
        body: Home(),
        backgroundColor: Colors.transparent,
        
        
    );
  }
}