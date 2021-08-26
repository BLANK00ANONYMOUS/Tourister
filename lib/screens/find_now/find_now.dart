import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:touristers_demo/constants.dart';
import 'package:touristers_demo/models/search_query.dart';
import 'package:touristers_demo/widgets/recent_places.dart';

import '../../data_search.dart';

class FindNowScreen extends StatefulWidget {
  @override
  _FindNowScreenState createState() => _FindNowScreenState();
}

class _FindNowScreenState extends State<FindNowScreen> {
  final List<String> _cities = [
    "Bhandup",
    "Mumbai",
    "Vishakhapatnam",
    "Coimbatore",
    "Pune",
    "Nagpur",
    "Vadodara",
    "New Delhi",
    "Lucknow",
    "Kanpur",
    "Chennai",
    "Bhopal",
    "Meerut",
    "Rajkot",
    "Allahabad",
    "Noida",
    "Agra",
    "Varanasi",
    "Howrah",
    "Bhopal",
    "Jallalpur",
  ];
  final List<String> _recentCities = [
    "Manali",
    "Haridwar",
    "Treak",
    "Camping Places",
  ];

  void _deleteSearch(String id) {
    setState(() {
      _recentCities.removeWhere((ser) => ser == id);
    });
  }

  void _addNewSearch(String qu) {
    setState(() {
      _recentCities.add(qu);
    });
  }

  final featuresIcons = [
    Icons.free_breakfast,
    Icons.smoke_free,
    Icons.wifi,
    Icons.car_rental,
    Icons.all_inclusive,
  ];

  final features = [
    'Free Breakfast',
    'Smoke Free',
    'Free Wifi',
    'Free Ride',
    'Free Everything',
  ];

  // final features = {
  //   'Free Breakfast': Icons.free_breakfast,
  //   'Smoke Free ': Icons.smoke_free,
  //   'Free Wifi': Icons.wifi,
  //   'Free Ride': Icons.car_rental,
  //   'Free Everything': Icons.all_inclusive,
  // };

  void _showToast(BuildContext context, String feature) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.hideCurrentSnackBar();
    scaffold.showSnackBar(
      SnackBar(
        content: Text(
          '$feature',
        ),
        action: SnackBarAction(
          label: 'UNDO',
          onPressed: scaffold.hideCurrentSnackBar,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search New Places"),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: DataSerch(_addNewSearch, _recentCities, _cities),
              );
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 8),
            child: Text(
              'Recent Searches',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          RecentPlaces(_recentCities, _deleteSearch),
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(15, 20, 0, 8),
            child: Text(
              'Top Picks',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            height: 300,
            width: 50,
            child: ListView.separated(
              itemCount: _cities.length,
              itemBuilder: (ctx, id) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 3,
                        color: Colors.grey,
                        style: BorderStyle.solid,
                      ),
                    ),
                    height: 200,
                    child: Column(
                      children: [
                        Flexible(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(3, 2, 3, 0),
                            child: GestureDetector(
                              onDoubleTap: () {
                                Navigator.pushNamed(context, PLACES_INFO_SCREEN);
                              },
                              child: Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.pV21QWocpMRnk1tvsclSXgHaE8%26pid%3DApi&f=1'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Row(
                            children: [
                              for (int i = 0; i < features.length; ++i)
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: SizedBox(
                                      height: 30.0,
                                      width: 30.0,
                                      child: IconButton(
                                        iconSize: 20,
                                        onPressed: () {
                                          _showToast(context, features[i]);
                                        },
                                        icon: Icon(
                                          featuresIcons[i],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          )
        ],
      ),
    );
  }
}
