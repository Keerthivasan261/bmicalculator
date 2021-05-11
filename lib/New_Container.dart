import 'package:flutter/material.dart';

class newcontainer extends StatelessWidget {
  newcontainer({this.newcolor,this.newchild,this.newtap});
  final Widget newchild;
  final Color newcolor;
  final Function newtap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: newtap,
      child: Container(
        child: newchild,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          color: newcolor,
        ),
      ),
    );
  }
}

