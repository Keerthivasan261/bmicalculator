import 'package:bmicalculator/HomeScreen.dart';
import 'package:flutter/material.dart';

Color colour = Color(0xFF25fcaa);

class AccentPage extends StatefulWidget {
  @override
  _AccentPageState createState() => _AccentPageState();
}

class _AccentPageState extends State<AccentPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose Accent colour',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                        margin: EdgeInsets.all(10),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red[600])),
                    onTap: () {
                      setState(() {
                        colour = Color(0xfffc1b1b);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen(color: colour);
                        }));
                      });
                    },
                  ),
                  SizedBox(width: 20,),
                  GestureDetector(
                    child: Container(
                        margin: EdgeInsets.all(10),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF002aff))),
                    onTap: () {
                      setState(() {
                        colour = Color(0xFF002aff);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen(color: colour);
                        }));
                      });
                    },
                  ),
                  SizedBox(width: 20,),
                  GestureDetector(
                    child: Container(
                        margin: EdgeInsets.all(10),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF02f9f5))),
                    onTap: () {
                      setState(() {
                        colour = Color(0xFF02f9f5);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen(
                            color: colour,
                          );
                        }));
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                        margin: EdgeInsets.all(10),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF25fcaa))),
                    onTap: () {
                      setState(() {
                        colour = Color(0xFF25fcaa);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen(
                            color: colour,
                          );
                        }));
                      });
                    },
                  ),
                  SizedBox(width: 20,),
                  GestureDetector(
                    child: Container(
                        margin: EdgeInsets.all(10),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFF0ef902))),
                    onTap: () {
                      setState(() {
                        colour = Color(0xFF0ef902);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen(
                            color: colour,
                          );
                        }));
                      });
                    },
                  ),
                  SizedBox(width: 20,),
                  GestureDetector(
                    child: Container(
                        margin: EdgeInsets.all(10),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFf9f102))),
                    onTap: () {
                      setState(() {
                        colour = Color(0xFFf9f102);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen(
                            color: colour,
                          );
                        }));
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
