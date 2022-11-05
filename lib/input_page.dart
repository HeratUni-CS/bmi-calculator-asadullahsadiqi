import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(


                    margin: EdgeInsets.all(15),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF1E2340),
                    ) ,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xFF1E2340),
                    margin: EdgeInsets.all(15),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFF1E2340),
              margin: EdgeInsets.all(15),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Color(0xFF1E2340),
                    margin: EdgeInsets.all(15),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xFF1E2340),
                    margin: EdgeInsets.all(15),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
