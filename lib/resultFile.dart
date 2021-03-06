import 'package:flutter/material.dart';
import 'package:new_bmi_calculator/constantFile.dart';
import 'package:new_bmi_calculator/ContainerFile.dart';
import 'input_page.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({
    @required this.bmiResult,
    @required this.interpretation,
    @required this.resultText,
  });
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Result'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'Your Result',
                    style: kTitleStyleS2,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: RepeatContainercode(
                colors: activeColor,
                cardWidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText,
                      style: kResultText,
                    ),
                    Text(
                      bmiResult,
                      style: kBmiTextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kbodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InputPage()));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      'ReCalculate',
                      style: kLargeButtonstyle,
                    ),
                  ),
                  color: Color(0xFFEB1555),
                  margin: EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                  height: 50.0,
                ),
              ),
            ),
          ],
        ));
  }
}
