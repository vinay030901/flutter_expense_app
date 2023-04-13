import './widgets/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  // we are doing so that our app only works in portrait mode
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expense',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
          errorColor: Colors.red,
          //accentColor: Colors.amber,
        ).copyWith(secondary: Colors.amber),
        fontFamily: 'NexaBold',
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: 'NexaBold',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        buttonTheme: const ButtonThemeData(buttonColor: Colors.white),
      ),
      home: const MyHomePage(),
    );
  }
}
