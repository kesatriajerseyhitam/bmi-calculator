import 'package:bmi_calculator/constants/styles.dart';
import 'package:bmi_calculator/screens/result.dart';
import 'package:bmi_calculator/utils/bmi_calculator.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/custom_card.dart';
import 'package:bmi_calculator/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/card_icon.dart';

enum Gender {
  male,
  female,
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Gender selectedGender;
  int height = 147;
  int weight = 48;
  int age = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    child: CardIcon(
                      customIcon: FontAwesomeIcons.male,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    child: CardIcon(
                      customIcon: FontAwesomeIcons.female,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomCard(
              colour: kInactiveCardColour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('HEIGHT', style: kLabelTextStyle),
                  Row(
                    textBaseline: TextBaseline.ideographic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: kBottomContainerColour,
                        inactiveTrackColor: Colors.grey,
                        overlayColor: Color(0x29EB1555),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        thumbColor: kBottomContainerColour),
                    child: Slider(
                      max: 240,
                      min: 120,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
                        });
                      },
                      value: height.toDouble(),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CustomCard(
                    colour: kInactiveCardColour,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(width: 15),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    colour: kInactiveCardColour,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 15),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              BMICalculator calc =
                  BMICalculator(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(
                    result: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    resultAdvice: calc.getAdvice(calc.getResult()),
                  ),
                ),
              );
            },
            text: 'calculate',
          ),
        ],
      ),
    );
  }
}
