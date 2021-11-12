import 'package:bmi/constant/app_constant.dart';
import 'package:flutter/material.dart';
import '';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bmi Calculator"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.amber,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: accentHexColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  child: TextField(
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Height',
                        hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8))),
                  ),
                  color: accentHexColor,
                ),
                Container(
                  width: 150,
                  child: TextField(
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                    keyboardType: TextInputType.number,
                    // decoration: InputDecoration(
                    //     border: InputBorder.none,
                    //     hintText: 'Weight',
                    //     hintStyle: TextStyle(
                    //         fontSize: 42,
                    //         fontWeight: FontWeight.w300,
                    //         color: Colors.white.withOpacity(.8))),
                  ),
                  color: accentHexColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
