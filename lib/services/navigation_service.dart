import 'package:flutter/material.dart';

class NavigationService {
  //navigation key
  static GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  //some utitilities to allow us to provide some kind of actions
  void removeAndNavigateToRoute(String _route) {
    navigatorKey.currentState?.popAndPushNamed(
        _route); //popAndPushNamed,used to pop off the current page we are at and it will replace it with the new page we give in the code
  }

  //this function wont pop off the page,but it will load the new page we passed as parameter to navigate
  void navigatToRoute(String _route) {
    navigatorKey.currentState?.pushNamed(_route);
  }

  void navigateToPage(Widget _page) {
    navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (BuildContext _context) {
          return _page;
        },
      ),
    );
  }

  void goBack() {
    navigatorKey.currentState?.pop();
  }
}
