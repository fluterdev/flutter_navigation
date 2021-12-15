import 'package:flutter/material.dart';

import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key, this.dataFromFirstScreen}) : super(key: key);

  final String? dataFromFirstScreen;

  @override
  Widget build(BuildContext context) {
    // final String? argsDataFromHomePage = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(argsDataFromHomePage ?? " No data "),
            Text(dataFromFirstScreen ?? " No data "),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ),
                );
              },
              color: Colors.green,
              textColor: Colors.white,
              child: const Text('To Second Screen'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.teal,
              textColor: Colors.white,
              child: const Text('Back To HomePage'),
            )
          ],
        ),
      ),
    );
  }
}
