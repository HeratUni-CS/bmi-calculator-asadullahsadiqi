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
int weight = 75;
int age=20;
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
                ResusableWidgit(
                    color: kActiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Weight',style: kLabelstyle),
                      Text(
                          weight.toString(),
                          style: kNumbersstyle,
                      ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   RoundedIconButton(
                     onPressed: (){
                       setState(() {
                         weight++;
                       });
                     },
                       iconData: Icons.add,
                   ),
                      SizedBox(
                        width: 10,
                      ),
                      RoundedIconButton(
                        onPressed: (){
                          setState(() {
                            weight--;
                          });
                        },
                        iconData: Icons.remove,

                      ),
                    ],
                  ),

                    ],

                    ),
                  ),

                ResusableWidgit(
                    color: kActiveCardColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Age',style: kLabelstyle),
                      Text(
                        age.toString(),
                        style: kNumbersstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedIconButton(
                            onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                            iconData: Icons.add,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundedIconButton(
                            onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                            iconData: Icons.remove,

                          ),
                        ],
                      ),

                    ],

                  ),
                ),

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

class RoundedIconButton extends StatelessWidget {
final IconData iconData;
final void Function() onPressed;
RoundedIconButton({ required this.iconData ,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: onPressed,
    fillColor: const Color(0xFF1C1C32),
      shape: CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(iconData ,
      size: 30),
    );
  }
}



