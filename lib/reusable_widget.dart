
import 'package:flutter/material.dart';

class ResusableWidgit extends StatelessWidget {
  ResusableWidgit({required this.color, this.child,this.onPressed});
  final Color color;
  final Widget? child;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap:onPressed ,
        child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: Color(0xFF1E2340),
            color: color,
          ),
          child: child,
        ),
      ),
    );
  }
}