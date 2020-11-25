import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_bmi_calculator/constantFile.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';
import 'constantFile.dart';

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                cardWidget: Column(
                  children: [
                    Text(
                      'HEIGHT',
                      style: kLabelStyle,
                    )
                  ],
                ),
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
