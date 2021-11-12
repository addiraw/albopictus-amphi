import 'package:bmi/screen/home.dart';
import 'package:bmi/screen/json.dart';
import 'package:flutter/material.dart';
void main ()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bmi Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: Colors.yellow,
      visualDensity: VisualDensity.adaptivePlatformDensity,),
home: HomeScreen(),
routes:{
  // '/':(context)=>Json(),
},
    );
  }
}