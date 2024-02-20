import 'package:flutter/material.dart';

//packages
import 'package:firebase_analytics/firebase_analytics.dart';

//services
import './services/navigation_service.dart';

//pages
import './pages/splash_page.dart';
import './pages/login_page.dart';

void main() {
  runApp(
    SplashPage(
      key: UniqueKey(),
      onInitializationComplete: () {
        runApp(
          MainApp(),
        ); //runapp will create an instance toremove the current page and load the new page
      },
    ),
  );
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //complete thing which does all navigation,theme and everything
      title: 'chatify',
      theme: ThemeData(
          backgroundColor: Color.fromRGBO(36, 35, 49, 1.0),
          scaffoldBackgroundColor: Color.fromRGBO(36, 35, 49, 1.0),
          // ignore: prefer_const_constructors
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Color.fromRGBO(30, 29, 37, 1.0))),
      navigatorKey:
          NavigationService.navigatorKey, //holds the state for the navigator
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext _context) => LoginPage(),
      },
    );
  }
}
