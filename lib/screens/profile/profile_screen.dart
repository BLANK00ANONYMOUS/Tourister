import 'package:flutter/material.dart';
import 'package:touristers_demo/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  _launchFeedBackURL() async {
    const url = 'https://forms.gle/k96cbJhmap4bwVeh8';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double blockSize = width / 100;
    double blSzVer = height / 100;
    double safeAreaHorizontal = MediaQuery.of(context).padding.left +
        MediaQuery.of(context).padding.right;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xFF69e2ff), Color(0xFF9fffe0)],
                ),
              ),
              // decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //         begin: Alignment.centerLeft,
              //         end: Alignment.centerRight,
              //         colors: [Colors.purple, Colors.blue])
              // ),
              padding: EdgeInsets.all(15),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Anand Swarup Bhatia',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '+918126076242',
                        style: TextStyle(
                          fontFamily: 'RobotoCondensed',
                        ),
                      ),
                      Text(
                        'anandswarupbhatia@gmail.com',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.12,
                    backgroundColor: Colors.brown.shade800,
                    child: const Text(
                      'A',
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.all(10),
            //   child: Text(
            //     'My Journey',
            //     style: TextStyle(
            //       fontSize: blockSize * 5.0,
            //       fontWeight: FontWeight.bold,
            //       fontFamily: 'QuickSand',
            //     ),
            //   ),
            // ),
            Card(
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      title: Text(
                        'My Journey',
                        style: TextStyle(
                          fontSize: blockSize * 5.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'QuickSand',
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.favorite,
                    ),
                    title: Text(
                      'Favourite Picks',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'QuickSand',
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.trip_origin,
                    ),
                    title: Text(
                      'Plan a new trip',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'QuickSand',
                          fontWeight: FontWeight.w800),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.assistant_navigation,
                    ),
                    title: Text(
                      'Ongoing Journey',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'QuickSand',
                          fontWeight: FontWeight.w800),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),

            Card(
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      title: Text(
                        'My Reviews',
                        style: TextStyle(
                          fontSize: blockSize * 5.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'QuickSand',
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.rate_review,
                    ),
                    title: Text(
                      'Write a Review',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'QuickSand',
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, REVIEW_SCREEN);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.preview,
                    ),
                    title: Text(
                      'Your Reviews',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'QuickSand',
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {},
                  ),
                  // ListTile(
                  //   leading: Icon(
                  //     Icons.camera,
                  //   ),
                  //   title: Text(
                  //     'Start a new blog',
                  //     style: TextStyle(
                  //         fontSize: 14,
                  //         fontFamily: 'QuickSand',
                  //         fontWeight: FontWeight.w600),
                  //   ),
                  //   onTap: () {},
                  // ),
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.all(10),
            //   child: Text(
            //     'Expense Manager',
            //     style: TextStyle(
            //       fontSize: blockSize * 5.0,
            //       fontWeight: FontWeight.bold,
            //       fontFamily: 'QuickSand',
            //     ),
            //   ),
            // ),
            Card(
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      title: Text(
                        'Expense Manager',
                        style: TextStyle(
                          fontSize: blockSize * 5.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'QuickSand',
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.account_balance_wallet,
                    ),
                    title: Text(
                      'Wallet',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'QuickSand',
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.card_giftcard,
                    ),
                    title: Text(
                      'Gift Cards',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'QuickSand',
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.card_membership,
                    ),
                    title: Text(
                      'Vouchers',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'QuickSand',
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.all(10),
            //   child: Text(
            //     'Assistance',
            //     style: TextStyle(
            //       fontSize: blockSize * 5.0,
            //       fontWeight: FontWeight.bold,
            //       fontFamily: 'QuickSand',
            //     ),
            //   ),
            // ),
            Card(
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      title: Text(
                        'Assistance',
                        style: TextStyle(
                          fontSize: blockSize * 5.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'QuickSand',
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.feedback_rounded,
                    ),
                    title: Text(
                      'Your Feedback',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'QuickSand',
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: _launchFeedBackURL,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.privacy_tip,
                    ),
                    title: Text(
                      'Safety and Privacy',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'QuickSand',
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, PRIVACY_SCREEN);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.support_agent,
                    ),
                    title: Text(
                      'Contact Our Supporting team',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'QuickSand',
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, CONTACT_SCREEN);
                    },
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.all(10),
            //   child: Text(
            //     'Account Info',
            //     style: TextStyle(
            //       fontSize: blockSize * 5.0,
            //       fontWeight: FontWeight.bold,
            //       fontFamily: 'QuickSand',
            //     ),
            //   ),
            // ),
            Card(
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      title: Text(
                        'Account Info',
                        style: TextStyle(
                          fontSize: blockSize * 5.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'QuickSand',
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                    ),
                    title: Text(
                      'Settings',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'QuickSand',
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout,
                    ),
                    title: Text(
                      'Log Out',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'QuickSand',
                          fontWeight: FontWeight.w600),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
