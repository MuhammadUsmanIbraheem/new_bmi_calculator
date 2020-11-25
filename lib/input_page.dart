import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';

const activeColor = Color(0xFF1D1E33);
const deaActiveColor = Color(0xFF111328);
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;

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
                    child: RepeatContainercode(
                      onPressed: () {
                        setState(() {
                          selectGender = Gender.male;
                        });
                      },
                      colors: selectGender == Gender.male
                          ? activeColor
                          : deaActiveColor,
                      cardWidget: RepeatTextandIconWidget(
                        iconData: FontAwesomeIcons.male,
                        label: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: RepeatContainercode(
                      onPressed: () {
                        setState(() {
                          selectGender = Gender.female;
                        });
                      },
                      colors: selectGender == Gender.female
                          ? activeColor
                          : deaActiveColor,
                      cardWidget: RepeatTextandIconWidget(
                        iconData: FontAwesomeIcons.female,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: RepeatContainercode(
                colors: Color(0xFF1D1E33),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: RepeatContainercode(
                      colors: Color(0xFF1D1E33),
                    ),
                  ),
                  Expanded(
                    child: RepeatContainercode(
                      colors: Color(0xFF1D1E33),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
