import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Containerfile.dart';
import 'Textandiconfile.dart';

const activecolor = Color(0xFF1D1E33);
const disablecolor = Color(0xFF111328);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //create Enum type Gender variable
  Gender selectGender;

  // Color malecolor = disablecolor;
  // Color femalecolor = disablecolor;
  //
  // void updatecolor(Gender gendertype) {
  //   if (gendertype == Gender.male) {
  //     malecolor = activecolor;
  //     femalecolor = disablecolor;
  //   }
  //   if (gendertype == Gender.female) {
  //     malecolor = disablecolor;
  //     femalecolor = activecolor;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RepeatContainerCode(
                    onPressed: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    colors: selectGender == Gender.male
                        ? activecolor
                        : disablecolor,
                    cardWidget: RepeatTextandIconWidget(
                      iconData: FontAwesomeIcons.male,
                      Label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: RepeatContainerCode(
                    onPressed: () {
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    //colors: femalecolor,
                    colors: selectGender == Gender.female
                        ? activecolor
                        : disablecolor,
                    cardWidget: RepeatTextandIconWidget(
                      iconData: FontAwesomeIcons.female,
                      Label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RepeatContainerCode(
              colors: Color(0xff7c94b6),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RepeatContainerCode(
                    colors: Color(0xff7c94b6),
                  ),
                ),
                Expanded(
                  child: RepeatContainerCode(
                    colors: Color(0xff7c94b6),
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
