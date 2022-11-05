import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_widget.dart';
import 'constant.dart';


enum Gender{
  male,
  female,
}


class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor= kInactiveCardCOlor;
  Color femaleCardColor= kInactiveCardCOlor;
Gender? genderSelectd;
int height =175;
  // void genderSelected(Gender selectedGender){
  //   setState(() {
  //     if(selectedGender==Gender.male){
  //       maleCardColor= activeCardColor;
  //       femaleCardColor= inactiveCardCOlor;
  //     }else{
  //       femaleCardColor=activeCardColor;
  //       maleCardColor= inactiveCardCOlor;
  //     }
  //   });
  //
  //
  // }
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
                ResusableWidgit(
                  onPressed: (){
                  setState(() {
                    genderSelectd=Gender.male;
                  });
                  },
                  color: (genderSelectd==Gender.male)?kActiveCardColor:kInactiveCardCOlor,
                  child: iconContent(
                      iconData: FontAwesomeIcons.mars, label: 'Male'),
                ),
                ResusableWidgit(
                  onPressed: (){
                setState(() {
                  genderSelectd=Gender.female;
                });
                  },
                    color: (genderSelectd==Gender.female)?kActiveCardColor:kInactiveCardCOlor,
                  child: iconContent(
                    iconData: FontAwesomeIcons.venus,
                    label: 'Female',
                  ),
                ),
              ],
            ),
          ),
          ResusableWidgit(
              color: kActiveCardColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'Height',
                  style: kLabelstyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline:TextBaseline.alphabetic,
                  children: [

                    Text(
                       height.toString(),
                      style: kNumbersstyle,
                    ),
                    Text(
                        'cm',
                      style: kLabelstyle,
                    ),


                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 1,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                  ),

                  child: Slider(
                    value: height.toDouble(),
                    onChanged: (double value){
                      setState(() {
                      height=value.round();
                      });
                    },
                    min: 120,
                    max: 220,
                    activeColor: Colors.white,
                    inactiveColor: Color(0xFF888993),
                    thumbColor: Color(0xFFEB1555),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ResusableWidgit(color: kActiveCardColor),
                ResusableWidgit(color: kActiveCardColor),
              ],
            ),
          ),
          Container(
            height: 80,
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10),
          ),
        ],
      ),
    );
  }
}




