import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../result_page_arguments.dart';

class ResultsPage extends StatelessWidget {
  // Passing data without named routes
  // ResultsPage(
  //     {@required this.bmiResults,
  //     @required this.resultText,
  //     @required this.interpretation});
  // final String bmiResults;
  // final String resultText;
  // final String interpretation;

  @override
  Widget build(BuildContext context) {
    // Passing data with named routes
// Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    final args =
        ModalRoute.of(context)?.settings.arguments as ResultPageArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kLargeLabelTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    args.resultText,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                      color: Color(0xFF3FB777),
                    ),
                  ),
                  Text(
                    args.bmiResults,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100.0,
                    ),
                  ),
                  Text(
                    args.interpretation,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
