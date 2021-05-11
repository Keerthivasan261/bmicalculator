import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LastScreen extends StatelessWidget {
  LastScreen(
      {this.BMInotation,
      this.CalcBMI,
      this.Interprete,
      this.BMIchart,
      this.color});

  final String BMInotation;
  final String CalcBMI;
  final String Interprete;
  final String BMIchart;
  final color;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF313233),
        primaryColor: Color(0xFF1b1b1c),
        accentColor: color,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(MdiIcons.arrowLeft),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Your Results',
                    style: TextStyle(fontSize: 45),
                  )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(12),
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Color(0xff202021),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(BMInotation.toUpperCase(),
                        style: TextStyle(
                            fontSize: 30,
                            color: color)),
                    Column(children: [
                      Text(
                        CalcBMI,
                        style: TextStyle(
                          fontSize: 70,
                        ),
                      ),
                      Text(
                        '$BMIchart',
                        style: TextStyle(fontSize: 20, color: Colors.grey[300]),
                      )
                    ]),
                    Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          'Tip: $Interprete',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: color),
                        )),
                    Center(
                        child: Padding(
                      padding: EdgeInsets.only(top: 50, left: 10, right: 10),
                      child: Text(
                        '** BMI can\'t be used for ATHLETES, BODY BUILDERS, PREGNANT WOMEN. Also it doesn\'t show your fats.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.red),
                      ),
                    ))
                  ],
                ),
              )),
              SizedBox(height: 15),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      child: Center(
                          child: Text(
                        'Recalculate',
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )),
                      width: double.infinity,
                      height: 70,
                      color: color))
            ],
          ),
        ),
      ),
    );
  }
}
