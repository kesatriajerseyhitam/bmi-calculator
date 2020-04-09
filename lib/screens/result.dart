import 'package:bmi_calculator/constants/styles.dart';
import 'package:bmi_calculator/screens/email.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/custom_card.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String result;
  final TextSpan resultAdvice;
  final String resultText;

  Result({
    @required this.result,
    @required this.resultAdvice,
    @required this.resultText,
  });

  List<TextSpan> getTextSpan(context) {
    List<TextSpan> textSpans = [];

    textSpans.add(resultAdvice);

    if (resultText == "normal") {
      textSpans.add(
        TextSpan(
          text: "Good Job!",
          recognizer: DoubleTapGestureRecognizer()
            ..onDoubleTap = () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Email(),
                  ),
                ),
        ),
      );
    }

    return textSpans;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 10, right: 20),
              width: double.infinity,
              child: CustomCard(
                colour: kInactiveCardColour,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: TextStyle(
                        color: Colors.green[400],
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      result,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 100,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Normal BMI Range:',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '18,5 - 25 kg/m2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40, right: 40),
                      child: RichText(
                        text: TextSpan(
                          children: getTextSpan(context),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            text: 're-calculate',
          )
        ],
      ),
    );
  }
}
