








// import 'dart:ffi';

// import 'package:bmi/screen/home.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
// import 'dart:async';

// void main() async {
//   // initialization of back4app server
//   WidgetsFlutterBinding.ensureInitialized();
//   final keyApplicationId = 'F2TfLD50KXcMV1MnJlKhOWj0tE2YORqgKzeIn0Cv';
//   final keyClientKey = 'jDPwbeR0vfKtvipac52kJgDhCuCpRHpCCVcyB5sK';
//   final keyParseServerUrl = 'https://parseapi.back4app.com';

//   await Parse().initialize(keyApplicationId, keyParseServerUrl,
//       clientKey: keyClientKey, autoSendSessionId: true);
// // end initialization
// // code for creat

//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   TextEditingController textEditingController =
//       TextEditingController(text: "0");
//   TextEditingController textEditingController1 =
//       TextEditingController(text: "0");
//       var bmii;
//   double bmi() {
//     var x = double.parse(textEditingController.text);
//     final y = int.parse(textEditingController1.text);
    
//     var bmii = x / y;
//     return bmii;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Bmi Calculator',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         // primaryColor: Colors.yellow,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       // home: HomeScreen(),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('bmi'),
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('Height'),
//                 Container(
//                   width: 100,
//                   height: 200,
//                   child: TextFormField(
//                     keyboardType: TextInputType.number,
//                     inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//                     controller: textEditingController,
//                     decoration:
//                         const InputDecoration(border: UnderlineInputBorder()),
//                     onChanged: (String val) {},
//                   ),
//                 ),
                
//                 Text('Weight'),
//                 Container(
//                   width: 100,
//                   height: 200,
//                   child: TextFormField(
//                     keyboardType: TextInputType.number,
//                     controller: textEditingController1,
//                     inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//                     decoration:
//                         const InputDecoration(border: UnderlineInputBorder()),
//                     onChanged: (String val) {},
//                   ),
//                 ),
//               ],
//             ),

//             Text('Calculate'),
//             IconButton(
//                 onPressed: () {
//                   bmi();
//                   print("${bmi()}");
//                 },
//                 icon: Icon(Icons.ac_unit_outlined)),
//                 Text('${bmi()}')
//           ],
//         ),
//       ),
//       routes: {
//         // '/':(context)=>Json(),
//       },
//     );
//   }
// }

// Future<String> uploadbmi() async {
//   final bmi = ParseObject('stats')
//     ..set('name', 'search')
//     ..set('bmi', 18);
//   await bmi.save();
//   return bmi.objectId;
// }
