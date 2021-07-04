import 'package:flutter/material.dart';
import 'constant.dart';
import 'myContainer.dart';
import 'BottomButton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.interpretaion, this.bmiResult, this.resultText});
  final String interpretaion;
  final String bmiResult;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: MyContainer(
                colour: kactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kresultTextStyle,
                    ),
                    Text(
                      bmiResult.toUpperCase(),
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretaion.toUpperCase(),
                       textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: BottomButton(
                data: 'CALCULATE - AGAIN',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ));
  }
}
