import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:touristers_demo/widgets/calendar.dart';

class ExploreScreen extends StatelessWidget {
  final List<int> childSafetyPLaces = [1, 4, 6, 5, 6, 6, 3, 7];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Explore Screen',
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Are You Free but don\'t know where to go',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Calendar(),
          Text('We have 10 locations in your selected date range'),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.fyH0MSX841r0jfao1YoYDQHaHa%26pid%3DApi&f=1'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.grey,
                ),
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              height: 250,
              child: Column(
                children: [
                  Text(
                    'Confused where to start',
                    style: TextStyle(
                      color: Colors.amber.shade100,
                    ),
                  ),
                  Flexible(
                    child: FractionallySizedBox(
                      heightFactor: 0.9,
                    ),
                  ),
                  Text(
                    'Pick a random location',
                    style: TextStyle(
                      color: Colors.amber.shade100,
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Let\'s go',
                      style: TextStyle(
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 70, 8, 5),
            child: Text(
              'Children Safety Places',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Container(
            height: 300,
            child: ListView.separated(
              padding: EdgeInsets.all(9),
              scrollDirection: Axis.horizontal,
              itemCount: childSafetyPLaces.length,
              itemBuilder: (_, id) {
                return GestureDetector(
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int id) {
                return SizedBox(
                  width: 10,
                );
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Learn More',
                    style: TextStyle(
                      color: Colors.indigo,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
