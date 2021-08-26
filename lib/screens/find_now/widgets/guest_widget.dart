import 'package:flutter/material.dart';

class GuestWidget extends StatefulWidget {
  const GuestWidget({Key? key}) : super(key: key);

  @override
  _GuestWidgetState createState() => _GuestWidgetState();
}

class _GuestWidgetState extends State<GuestWidget> {
  double numberOfChildren = 0;
  double numberOfAdults = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Guests:-'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 3,
                child: Text('Adults (${numberOfAdults.toInt()})'),
              ),
              Slider(
                value: numberOfAdults.toDouble(),
                min: 0,
                max: 10,
                label: numberOfAdults.toString(),
                onChanged: (double value) {
                  setState(() {
                    numberOfAdults = value.roundToDouble();
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Text('Children (${numberOfChildren.toInt()})'),
              ),
              Slider(
                value: numberOfChildren.toDouble(),
                min: 0,
                max: 10,
                label: numberOfChildren.toString(),
                onChanged: (double value) {
                  setState(() {
                    numberOfChildren = value.roundToDouble();
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
