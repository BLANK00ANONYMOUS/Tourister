import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touristers_demo/constants.dart';

//import 'package:flip_card/flip_card.dart';
import 'package:touristers_demo/models/flashcard.dart';
import 'package:touristers_demo/widgets/flashcard_view.dart';

class PlacesInfoScreen extends StatefulWidget {
  @override
  _PlacesInfoScreenState createState() => _PlacesInfoScreenState();
}

class _PlacesInfoScreenState extends State<PlacesInfoScreen> {
  List<FlashCard> _flashCards = [
    FlashCard(
      question: "Rating and review",
      answer: "Dart",
    ),
    FlashCard(
      question: "Info",
      answer: "GhostBusters",
    ),
    FlashCard(
      question: "Images",
      answer: "Me",
    ),
  ];

  List<bool> values = List.filled(10, false);
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Places Info Screen"),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            //color: Colors.red,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  //color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://www.theindianwire.com/wp-content/uploads/2018/08/Chitkul.jpg',
                      ),
                      //backgroundColor: Colors.tealAccent,
                      radius: MediaQuery.of(context).size.height * 0.25,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.60,
                  //color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                          child: Text(
                            'New Himachal main Road',
                            maxLines: 3,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: Text('Ratings: 4.2 ⭐'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            //color: Colors.deepPurpleAccent,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  //color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cost :-',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          '₹45 per night',
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  //color: Colors.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address :-',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Text(
                        'C-7/1, Chandralok Colony Rajpur Road Near very good place',
                        maxLines: 3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            color: Theme.of(context).buttonColor,
            onPressed: () {
              Navigator.pushNamed(context, BOOK_PLACES_SCREEN);
            },
            child: Text('Explore More'),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Features:-'),
                        Text('Add on Features'),
                      ],
                    ),
                    for (int i = 0; i < 9; ++i)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(child: Text('Feature ${i + 1}')),
                          Flexible(child: Text('Feature ${i + 1}')),
                          Checkbox(
                            value: this.values[i],
                            onChanged: (bool? value) {
                              setState(() {
                                this.values[i] = value!;
                              });
                            },
                          ),
                        ],
                      )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 10, 0, 0),
            child: Text(
              'Ratings And Review',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 500,

              //color: Colors.indigoAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '4.2',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Best and world class place',
                  ),
                  Divider(),
                  Text(
                    'This is the best blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah ',
                    maxLines: 6,
                  ),
                  Divider(),
                  Text(
                    '4.2',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    'Best and world class place',
                  ),
                  Divider(),
                  Text(
                    'This is the best blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah ',
                    maxLines: 6,
                  ),
                  Divider(),
                  ListTile(
                    onTap: () {},
                    title: Text(
                      'See 100 More Reviews',
                    ),
                    trailing: Icon(
                      Icons.exit_to_app,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            color: Theme.of(context).buttonColor,
            onPressed: () {
              //Navigator.pushNamed(context, BOOK_PLACES_SCREEN);
            },
            child: Text('Chat With Host'),
          ),
        ],
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       SizedBox(
      //         width: MediaQuery.of(context).size.width * 0.85,
      //         height: MediaQuery.of(context).size.height * 0.7,
      //         //child: FlashCardView(text: _flashCards[_currentIndex].question),
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           Expanded(
      //             flex: 1,
      //             child: OutlinedButton.icon(
      //               onPressed: _showPreviousCard,
      //               icon: Icon(Icons.chevron_left_outlined),
      //               label: Text('Prev'),
      //             ),
      //           ),
      //           Expanded(
      //             flex: 2,
      //             child: OutlinedButton(
      //               onPressed: () {
      //                 Navigator.pushNamed(context, BOOK_PLACES_SCREEN);
      //               },
      //               child: Text(
      //                 'Explore More',
      //               ),
      //             ),
      //           ),
      //           Expanded(
      //             flex: 1,
      //             child: OutlinedButton.icon(
      //               onPressed: _showNextCard,
      //               icon: Icon(Icons.chevron_right_outlined),
      //               label: Text('Next'),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
