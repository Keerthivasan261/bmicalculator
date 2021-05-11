import 'package:bmicalculator/accentpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());

}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Color(0xFF313233),
      primaryColor: Color(0xFF1b1b1c),
      accentColor: Colors.white,
    ),
      debugShowCheckedModeBanner: false,
      home: AccentPage(),
    );;
  }
}
