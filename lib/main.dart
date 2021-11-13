import 'package:bmi/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'dart:async';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final keyApplicationId = 'F2TfLD50KXcMV1MnJlKhOWj0tE2YORqgKzeIn0Cv';
  final keyClientKey = 'jDPwbeR0vfKtvipac52kJgDhCuCpRHpCCVcyB5sK';
  final keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, autoSendSessionId: true);

  var firstObject = ParseObject('FirstClass')
    ..set(
        'message', 'Hey ! First message from Flutter. Parse is now connected');
  await firstObject.save();

  print('done');
  Future<String> newTesting() async {
    final Tesing = ParseObject('testcase')
      ..set('key object', 'key pair object');
    await Tesing.save();
    return Tesing.objectId;
  }

  print(newTesting());
  runApp(MyApp());
}

// void main() async  {
//   final keyApplicationId = 'F2TfLD50KXcMV1MnJlKhOWj0tE2YORqgKzeIn0Cv';
//   final keyClientKey = 'jDPwbeR0vfKtvipac52kJgDhCuCpRHpCCVcyB5sK';
//   final keyParseServerUrl = 'https://parseapi.back4app.com/';
//     await Parse().initialize(keyApplicationId, keyParseServerUrl,
//       clientKey: keyClientKey, autoSendSessionId: true);

//   var firstObject = ParseObject('FirstClass')
//     ..set(
//         'message', 'Hey ! First message from Flutter. Parse is now connected');
//   await firstObject.save();

//   print('done');
//   runApp(MyApp());
// }
//   Future<String> saveNewPlayer()
//   async {
//     final soccerPlayer = ParseObject('SoccerPlayer')
//     ..set('playerName', 'A. Wed')
//     ..set('yaerOfBirth', 1997)
//     ..set('emailCOntact', 'a.wed@gmial.com')
//     ..set('attributes', ['fast','good conditioning']);
//     await soccerPlayer.save();
//     return soccerPlayer.objectId;
//   }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bmi Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
        // '/':(context)=>Json(),
      },
    );
  }
}
