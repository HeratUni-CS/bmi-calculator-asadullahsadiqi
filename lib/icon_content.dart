
import 'package:flutter/material.dart';
class iconContent extends StatelessWidget {
  final IconData iconData;
  final String label;
  iconContent({required this.iconData, required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: 65),
        Text(
          label,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}