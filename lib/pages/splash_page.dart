import 'package:chatify_app/services/database_service.dart';
import 'package:flutter/material.dart'; //material library

//packages
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';

//services
import '../services/navigation_service.dart';
import '../services/media_service.dart';
import '../services/could_stroage_service.dart';
import '../services/could_stroage_service.dart';

class SplashPage extends StatefulWidget {
  final VoidCallback onInitializationComplete;

  //creating a constructor
  //{used for arguments}
  const SplashPage({
    required Key key,
    required this.onInitializationComplete,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashPageState();
  }
}

//state class for splash screen
//_ infront of any word tell that this is a private class or method which cannot be acccessed by outside of the class
class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((_) {
      _setup().then((_) => widget
          .onInitializationComplete()); //widget is the one helps to access other methods//put brackets to signify that it needs to be invoked
    });
  }

  //build method for _splashpagestate
  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Chatify",
        theme: ThemeData(
          backgroundColor: Color.fromRGBO(36, 35, 49, 1.0),
          scaffoldBackgroundColor: Color.fromRGBO(36, 35, 49, 1.0),
        ),
        home: Scaffold(
          body: Center(
            child: Container(
              height: 200,
              width: 200,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                // ignore: prefer_const_constructors
                image: DecorationImage(
                  fit: BoxFit.contain,
                  // ignore: prefer_const_constructors
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
            ),
          ),
        ));
  }

  Future<void> _setup() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    _registerServices();
  }

  void _registerServices() {
    GetIt.instance.registerSingleton<NavigationService>(
      NavigationService(),
    );
    GetIt.instance.registerSingleton<MediaService>(
      MediaService(),
    );
    GetIt.instance.registerSingleton<CloudStorageService>(
      CloudStorageService(),
    );
    GetIt.instance.registerSingleton<DatabaseService>(
      DatabaseService(),
    );
  }
}
