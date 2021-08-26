import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:touristers_demo/screens/profile/widgets/custom_feedback_form.dart';

class ReviewForm extends StatefulWidget {
  @override
  _ReviewFormState createState() => _ReviewFormState();
}

class _ReviewFormState extends State<ReviewForm> {
  final _ratingParameters = [
    'Features',
    'Natural Beauty',
    'Host Review',
    'Overall Experience',
  ];
  List<double> _sliderValues = [
    0,
    0,
    0,
    0,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Review Form',
        ),
      ),
      body: ListView(
        children: [
          for (int i = 0; i < _ratingParameters.length; ++i)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    _ratingParameters[i] +
                        '(' +
                        _sliderValues[i].toString() +
                        ')',
                  ),
                ),
                Flexible(
                  child: Slider(
                    value: _sliderValues[i].toDouble(),
                    min: 0,
                    max: 10,
                    label: _sliderValues[i].toString(),
                    onChanged: (double value) {
                      setState(() {
                        _sliderValues[i] = value.roundToDouble();
                      });
                    },
                  ),
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Any Other Feedback',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          CustomFeedbackForm(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text('Thanks for your Feedback'),
              );
            },
          );
        },
        tooltip: 'Feedback Button',
        child: const Icon(Icons.post_add_sharp),
      ),
    );
  }
}
