import 'package:flutter/material.dart';
import 'package:touristers_demo/models/search_query.dart';

class RecentPlaces extends StatelessWidget {
  final List<String> cities;
  final Function deleteSearch;

  RecentPlaces(this.cities, this.deleteSearch);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      //color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, ind) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 200,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.pV21QWocpMRnk1tvsclSXgHaE8%26pid%3DApi&f=1'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            for (var i = 1; i <= 5; ++i)
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                          ],
                        ),
                        Text(
                          '4.5/${ind + 1}',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    IconButton(
                        onPressed: () {
                          deleteSearch(cities[ind]);
                        },
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: cities.length,
      ),
    );
  }
}
