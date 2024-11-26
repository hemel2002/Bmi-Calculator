import 'package:bmi_app/bottomButton.dart';
import 'package:bmi_app/constVariable.dart';
import 'package:bmi_app/widget.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arg =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final bmi = arg['bmi'];
    final result = arg['result'];
    final interpretation = arg['interpretation'];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CHECK',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: NewWidget(
              widget: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        result,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 12, 211, 121),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      bmi.toString(),
                      style: const TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      interpretation,
                      style: kstringStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          ButtomButton(
            Data: 'RECALCULATE',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
