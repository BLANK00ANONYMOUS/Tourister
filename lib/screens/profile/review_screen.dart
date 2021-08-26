import 'package:flutter/material.dart';
import 'package:touristers_demo/constants.dart';

class ReviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double blockSize = width / 100;
    return Scaffold(
      appBar: AppBar(
        title: Text('Review Screen'),
      ),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Travel History',
                style: TextStyle(
                  fontSize: blockSize * 5.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'QuickSand',
                ),
              ),
            ),
          ),
          for (int i = 1; i < 15; ++i)
            Card(
              elevation: 2,
              child: ListTile(
                leading: Image(
                  image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.pV21QWocpMRnk1tvsclSXgHaE8%26pid%3DApi&f=1'),
                  fit: BoxFit.cover,
                ),
                title: Text(
                  'Chandigarh',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'QuickSand',
                      fontWeight: FontWeight.w600),
                ),
                subtitle: Text('About 2 weeks ago'),
                trailing: Icon(
                  Icons.text_fields,
                ),
                onTap: () {
                  Navigator.pushNamed(context, REVIEW_FORM);
                },
              ),
            ),
        ],
      ),
    );
  }
}
