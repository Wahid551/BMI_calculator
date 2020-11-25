import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  //TODO use of refactor code
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

class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({@required this.colors});
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
