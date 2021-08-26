import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touristers_demo/screens/profile/widgets/call_and_mail.dart';
import 'package:touristers_demo/screens/profile/widgets/contacts.dart';

class ContactScreen extends StatelessWidget {
  final appbar = AppBar(
    title: Text(
      'Contact Team',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: Container(
          color: Colors.red,
          width: double.infinity,
          height: (MediaQuery.of(context).size.height -
                  appbar.preferredSize.height -
                  MediaQuery.of(context).padding.top) *
              0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 1; i <= 5; ++i)
                    Contacts(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 1; i <= 5; ++i)
                    CallAndMail(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
