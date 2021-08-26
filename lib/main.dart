import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:touristers_demo/screens/find_now/booking/book_places_screen.dart';
import 'package:touristers_demo/screens/guest_screen.dart';
import 'package:touristers_demo/screens/home_screen.dart';
import 'package:touristers_demo/screens/auth_screens/login_page.dart';
import 'package:touristers_demo/screens/find_now/places_info_screen.dart';
import 'package:touristers_demo/screens/profile/contact_team.dart';
import 'package:touristers_demo/screens/profile/privacy_screen.dart';
import 'package:touristers_demo/screens/auth_screens/signup_page.dart';
import 'package:touristers_demo/screens/profile/review_screen.dart';
import 'package:touristers_demo/screens/profile/widgets/review_form.dart';
import 'package:touristers_demo/screens/splash_screen.dart';
import 'constants.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Demo',
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: const Color(0xFFFFA667),
        primarySwatch: Colors.teal,
        accentColor: Colors.amber,
        textTheme: ThemeData.light().textTheme.copyWith(
            title: TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),
            button: TextStyle(
                color: Colors.white
            )
        ),

        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
            title: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20,
            ),
          ),
        )
      ),
      routes: <String, WidgetBuilder>{
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/homeScreen' : (context) => HomeScreen(),
        PRIVACY_SCREEN: (BuildContext context) => PrivacyPolicyScreen(),
        CONTACT_SCREEN: (BuildContext context) => ContactScreen(),
        PLACES_INFO_SCREEN: (BuildContext context) => PlacesInfoScreen(),
        SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
        HOME_SCREEN: (BuildContext context) => BasicTable(),
        REVIEW_SCREEN: (BuildContext context) => ReviewScreen(),
        REVIEW_FORM: (BuildContext context) => ReviewForm(),
        BOOK_PLACES_SCREEN: (BuildContext context) => BookPlacesScreen(),
        //GRID_ITEM_DETAILS_SCREEN: (BuildContext context) => GridItemDetails(),
      },
    );
  }
}
