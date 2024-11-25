import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon.dart';
import 'widget.dart';
import 'constVariable.dart';
import 'bottomButton.dart';
import 'customButton.dart';

// ignore: depend_on_referenced_packages

Color maleColor = kinactiveColor;
Color femaleColor = kinactiveColor;

enum GenderSelector { male, female }

GenderSelector? gander;

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  int _startValue = 180;
  int _startWeight = 30;
  int _startAge = 19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CHECK',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: NewWidget(
                      onPressed: () {
                        setState(() {
                          gander = GenderSelector.male;
                        });
                      },
                      widget: const IconWidget(
                          icon: FontAwesomeIcons.mars, textData: 'Male'),
                      color: gander == GenderSelector.male
                          ? kactiveColor
                          : kinactiveColor,
                    ),
                  ),
                  Expanded(
                    child: NewWidget(
                      onPressed: () {
                        setState(() {
                          gander = GenderSelector.female;
                        });
                      },
                      image: Image.asset(
                        'images/1.jpg',
                      ),
                      color: gander == GenderSelector.female
                          ? kactiveColor
                          : kinactiveColor,
                      widget: const IconWidget(
                        icon: FontAwesomeIcons.venus,
                        textData: 'Female',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: NewWidget(
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Center(
                      child: Text(
                        'Height',
                        style: kstringStyle,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          _startValue.toString(),
                          style: kWordStyle,
                        ),
                        const Text(
                          'cm',
                          style: kstringStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: kbottomContainerColor,
                        inactiveTrackColor: kactiveColor,
                        thumbColor: kbottomContainerColor,
                        overlayColor: kbottomContainerColor.withOpacity(0.20),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30.0),
                        thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 20.0),
                      ),
                      child: Slider(
                          value: _startValue.toDouble(),
                          min: 20,
                          max: 300,
                          divisions: 300,
                          onChanged: (double newvalue) {
                            setState(() {
                              _startValue = newvalue.round();
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: NewWidget(
                      widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Center(
                            child: Text('Weight', style: kstringStyle),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(_startWeight.toString(), style: kWordStyle),
                              const Text('kg', style: kstringStyle),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CustomButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        if (_startWeight < 200) _startWeight++;
                                      });
                                    }),
                              ),
                              Expanded(
                                child: CustomButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      if (_startWeight > 20) _startWeight--;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: NewWidget(
                        widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Age', style: kstringStyle),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(_startAge.toString(), style: kWordStyle),
                            const Text('years', style: kstringStyle),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CustomButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      if (_startAge < 100) _startAge++;
                                    });
                                  }),
                            ),
                            Expanded(
                              child: CustomButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      if (_startAge > 10) _startAge--;
                                    });
                                  }),
                            ),
                          ],
                        )
                      ],
                    )),
                  ),
                ],
              ),
            ),
            ButtomButton(
              Data: 'CALCULATE',
              onPressed: () {
                Navigator.pushNamed(context, '/result');
              },
            ),
          ],
        ),
      ),
    );
  }
}
