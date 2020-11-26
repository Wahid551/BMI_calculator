import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Containerfile.dart';
import 'Textandiconfile.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    colors: Color(0xff7c94b6),
                    cardWidget: RepeatTextandIconWidget(
                      iconData: FontAwesomeIcons.male,
                      Label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: RepeatContainerCode(
                    colors: Color(0xff7c94b6),
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
