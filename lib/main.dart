import 'package:flutter/material.dart';

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
          title: Text('BMI'),
        ),
        body: Container(
            child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 100,
                height: 100,
                child: TextFormField(
                  controller: _heightController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.height),
                    hintText: 'height',
                    border: UnderlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (String val) {},
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: TextFormField(
                  controller: _weightController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.line_weight),
                    hintText: 'weight',
                    border: UnderlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (String val) {},
                ),
              )
            ]),
            IconButton(
                onPressed: () {
                  try {
                    calculateBmi();
                  } catch (e) {
                    print(e);
                  }
                },
                icon: Icon(Icons.calculate)),
            Text('$calculatedBmi'),
          ],
        )),
      ),
    );
  }
}

