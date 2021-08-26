import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallAndMail extends StatelessWidget {

  // _sendingMails() async {
  //   const url = 'mailto:anandsvarupbhatia@gmail.com';
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.25,
        height: MediaQuery.of(context).size.height * 0.04,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: IconButton(
                onPressed: () {
                  launch("tel://9878650403");
                },
                icon: Icon(
                  Icons.call,
                ),
                color: Colors.green,
              ),
            ),
            Flexible(
              child: IconButton(
                onPressed: () async {
                  const url = 'mailto:anandsvarupbhatia@gmail.com';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                icon: Icon(
                  Icons.mail,
                ),
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
