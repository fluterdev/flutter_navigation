import 'package:flutter/material.dart';
import 'package:flutter_navigation/screens/home_screen.dart';

//Navigation to new page
//Navigation with Data
//Name route Navigation
//stateful vs stateless
//Stateful widget life cycle
// some stateful widget demo
// hot reload vs hot restart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),

      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const HomeScreen(),
      //   '/firstScreen': (context) => const FirstScreen(),
      //   '/secondScreen': (context) => const SecondScreen(),
      // },
    );
  }
}
