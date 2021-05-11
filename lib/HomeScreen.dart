import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'LastScreen.dart';
import 'New_Container.dart';
import 'calculate.dart';

const lightColor = Color(0xFF4f4f51);
const darkColor = Color(0xFF202021);
const stylingText = TextStyle(fontSize: 40, fontWeight: FontWeight.w600);
enum Gender { male, female }


class HomeScreen extends StatefulWidget {
  HomeScreen({this.color});
  final color;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int age = 26;
  int weight = 60;
  int height = 160;

  // ignore: non_constant_identifier_names
  Gender Select_Gender;

  @override
  Widget build(BuildContext context) {
    var themedata = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Color(0xFF313233),
      primaryColor: Color(0xFF1b1b1c),
      accentColor: widget.color,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themedata,
      home: Scaffold(
        appBar: AppBar(
          leading: FlatButton(child: Icon(MdiIcons.arrowLeft),onPressed: (){Navigator.pop(context);},),
          title: Center(
            child: Text(
              'BMI Calculator',
              style: TextStyle(
                  fontWeight: FontWeight.w400, letterSpacing: 3, fontSize: 24),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: newcontainer(
                      newtap: () {
                        setState(() {
                          Select_Gender = Gender.male;
                        });
                      },
                      newcolor:
                      Select_Gender == Gender.male ? darkColor : lightColor,
                      newchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            MdiIcons.genderMale,
                            size: 90,
                            color: widget.color,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(fontSize: 22),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: newcontainer(
                      newtap: () {
                        setState(() {
                          Select_Gender = Gender.female;
                        });
                      },
                      newcolor:
                      Select_Gender == Gender.female ? darkColor : lightColor,
                      newchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            MdiIcons.genderFemale,
                            size: 90,
                            color: widget.color,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: newcontainer(
                newcolor: lightColor,
                newchild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(fontSize: 27),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: stylingText,
                          ),
                          Text(
                            ' cm',
                            style: TextStyle(fontSize: 20),
                          ),
                        ]),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: widget.color,
                        thumbColor: Color(0xffffffff),
                        thumbShape:
                        RoundSliderThumbShape(enabledThumbRadius: 12),
                        overlayColor: Color(0x40000000),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 100,
                        max: 230,
                        //activeColor: widget.color,
                        inactiveColor: Colors.grey[800],
                        onChanged: (double newvalue) {
                          setState(() {
                            height = newvalue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: newcontainer(
                      newcolor: lightColor,
                      newchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(fontSize: 22),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  weight.toString(),
                                  style: stylingText,
                                ),
                                Text(
                                  ' kg',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ]),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: widget.color,
                              thumbColor: Color(0xffffffff),
                              thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 10),
                              overlayColor: Color(0x40000000),
                            ),
                            child: Slider(
                              value: weight.toDouble(),
                              min: 40,
                              max: 120,
                              inactiveColor: Colors.grey[800],
                              onChanged: (double newvalue) {
                                setState(() {
                                  weight = newvalue.round();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: newcontainer(
                      newcolor: lightColor,
                      newchild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(fontSize: 22),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              child: Text(
                                age.toString(),
                                style: stylingText,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RoundIconButton(
                                    icon: Icon(
                                      MdiIcons.minus,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (age > 0) {
                                          age--;
                                        }
                                      });
                                    }),
                                RoundIconButton(
                                    icon: Icon(
                                      MdiIcons.plus,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    })
                              ])
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Calculate calc = Calculate(height: height, weight: weight);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LastScreen(
                            CalcBMI: calc.CalculateBMI(),
                            BMInotation: calc.BMINotation(),
                            Interprete: calc.Interpretation(),
                            BMIchart: calc.BMIChart(),
                            color: widget.color,
                          )));
                });
              },
              child: Container(
                  child: Center(
                      child: Text(
                        'Calculate',
                        style: TextStyle(fontSize: 22, color: Colors.black),
                      )),
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: widget.color,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final Widget icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(width: 50, height: 50),
      shape: CircleBorder(),
      fillColor: Theme.of(context).accentColor,
      child: icon,
    );
  }
}
