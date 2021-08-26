import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:location/location.dart';
import '../widgets/location_input.dart';
import 'package:url_launcher/url_launcher.dart';

class TravelScreen extends StatefulWidget {
  @override
  _TravelScreenState createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  List<String> allNames = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "gh",
    "LL",
    "p",
    "fsa",
    "ewa",
    "fa",
    "sfa",
    "daw",
  ];
  _launchURL() async {
    const url = 'https://www.tripadvisor.in/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Location Of User',
        ),
      ),
      body: ListView(
        children: [
          LocationInput(),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                height: 200,
                color: Colors.red,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(child: Text('PLease Review Your Latest Trip')),
                    Flexible(
                      child: Row(
                        children: [
                          Flexible(child: Text('To Enhance Your Experience')),
                          Flexible(
                            child: ElevatedButton.icon(
                              onPressed: _launchURL,
                              icon: Icon(Icons.rate_review),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                              label: Flexible(
                                child: Text('Review Now'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
