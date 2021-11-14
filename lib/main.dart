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



double bmi=calculatedBmi;
if(bmi<16)
{
  print('Severe Thinness');
}
if(	bmi>=16 &&bmi< 17)
{
   print('Moderate Thinness');
}
if(bmi>=17&&bmi< 18.5)
{
 print('Mild Thinness	');
}
if(bmi>=	18.5 &&bmi< 25)
{
   print('Normal');
}
if(bmi>=25 &&bmi<  30)
{
   print('Overweight	');
}
if(bmi>=30 &&bmi< 35)
{
   print('Obese Class I	');
}
if(bmi>=35 &&bmi<  40)
{
   print('Obese Class II	');
}
if(bmi> 40)
{
  
 print('Obese Class III');	
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

