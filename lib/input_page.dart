import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_widget.dart';

const activeCardColor = Color(0xFF1E2340);
const inactiveCardCOlor = Color(0xFF1D1F33);
enum Gender{
  male,
  female,
}


class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor= inactiveCardCOlor;
  Color femaleCardColor= inactiveCardCOlor;
Gender? genderSelectd;
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
                  color: (genderSelectd==Gender.male)?activeCardColor:inactiveCardCOlor,
                  child: iconContent(
                      iconData: FontAwesomeIcons.mars, label: 'Male'),
                ),
                ResusableWidgit(
                  onPressed: (){
                setState(() {
                  genderSelectd=Gender.female;
                });
                  },
                    color: (genderSelectd==Gender.female)?activeCardColor:inactiveCardCOlor,
                  child: iconContent(
                    iconData: FontAwesomeIcons.venus,
                    label: 'Female',
                  ),
                ),
              ],
            ),
          ),
          ResusableWidgit(color: activeCardColor),
          Expanded(
            child: Row(
              children: [
                ResusableWidgit(color: activeCardColor),
                ResusableWidgit(color: activeCardColor),
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




