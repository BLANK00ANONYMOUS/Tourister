import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '+91 4567435698',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              'xyz@gmail.com',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}
