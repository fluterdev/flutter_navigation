import 'package:flutter/material.dart';

import 'first_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const FirstScreen(),
                  ),
                );
              },
              child: const Text('To First Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const FirstScreen(
                      dataFromFirstScreen: 'Data Passed from first screen',
                    ),
                  ),
                );
              },
              child: const Text('To First Screen With Data'),
            ),
            const SizedBox(height: 20),
            const Divider(thickness: 2, color: Colors.teal),
            const SizedBox(height: 20),

            //Named Routes
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/firstScreen');
            //   },
            //   child: const Text('To First Screen With Named Route'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/firstScreen', arguments: 'data with named route from home screen');
            //   },
            //   child: const Text('To First Screen With Data'),
            // ),
          ],
        ),
      ),
    );
  }
}
