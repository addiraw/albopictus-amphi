import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant/app_constant.dart';

void main(List<String> args) {
  runApp(CalculateBmi());
}

class CalculateBmi extends StatefulWidget {
  const CalculateBmi({Key key}) : super(key: key);

  @override
  _CalculateBmiState createState() => _CalculateBmiState();
}

class _CalculateBmiState extends State<CalculateBmi> {
  TextEditingController _weightController = TextEditingController(text: '');
  TextEditingController _heightController = TextEditingController(text: '');
  double calculatedBmi = 0;
  String comment = '';
  double calculateBmi() {
    double height = double.parse(_heightController.text);
    double weight = double.parse(_weightController.text);
    double bmi = weight / (height * height);
    setState(() {
      calculatedBmi = bmi;
    });
    return bmi;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black.withOpacity(0.0),
          elevation: 0,
          title: Text('BMI'),
        ),
        body: Container(
            child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              'Body Mass Index',
              style: grey,
            ),
            SizedBox(
              height: 100,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 100,
                height: 100,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 0, 10),
                      child: Text(
                        'Height',
                        style: TextStyle(
                            backgroundColor: Colors.lime,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(
                          color: Colors.black38, fontWeight: FontWeight.bold),
                      controller: _heightController,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 2.0),
                        ),
                        icon: Icon(Icons.height),
                        border: UnderlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (String val) {},
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 0, 10),
                      child: Text(
                        'Weight',
                        style: TextStyle(
                            backgroundColor: Colors.lime,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                      ),
                      controller: _weightController,
                      decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black87, width: 2.0),
                        ),
                        icon: Icon(
                          Icons.line_weight,
                          color: Colors.grey,
                        ),
                        border: UnderlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (String val) {},
                    ),
                  ],
                ),
              )
            ]),
            Container(
              child: IconButton(
                  alignment: Alignment.center,
                  onPressed: () {
                    try {
                      calculateBmi();
                    } catch (e) {
                      print(e);
                    }

                    double bmi = calculatedBmi;
                    if (bmi < 16) {
                      print('Severe Thinness');
                      setState(() {
                        comment = 'Severe Thinness';
                      });
                    }
                    if (bmi >= 16 && bmi < 17) {
                      print('Moderate Thinness');
                      setState(() {
                        comment = 'Moderate Thinness';
                      });
                    }
                    if (bmi >= 17 && bmi < 18.5) {
                      print('Mild Thinness	');
                      setState(() {
                        comment = 'Mild Thinness	';
                      });
                    }
                    if (bmi >= 18.5 && bmi < 25) {
                      print('Normal');
                      setState(() {
                        comment = 'Normal';
                      });
                    }
                    if (bmi >= 25 && bmi < 30) {
                      print('Overweight	');
                      setState(() {
                        comment = 'Overweight	';
                      });
                    }
                    if (bmi >= 30 && bmi < 35) {
                      print('Obese Class I	');
                      setState(() {
                        comment = 'Obese Class I';
                      });
                    }
                    if (bmi >= 35 && bmi < 40) {
                      print('Obese Class II	');
                      setState(() {
                        comment = 'Obese Class II';
                      });
                    }
                    if (bmi > 40) {
                      print('Obese Class III');
                      setState(() {
                        comment = 'Obese Class III';
                      });
                    }
                  },
                  icon: Icon(
                    Icons.calculate,
                    // size: 100,
                  )),
            ),
            Text(
              '$calculatedBmi',
              maxLines: 1,
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4),
            ),
            Container(
              child: Expanded(
                  child: Column(
                children: [
                  Text(
                    '$comment',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan,
                        height: 2),
                  ),
                ],
              )),
            ),
          ],
        )),
      ),
    );
  }
}
