import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  void initState() {
    super.initState();
    print("Init State is Fist State of stateful widget");
  }

  @override
  void dispose() {
    super.dispose();
    print("Dispose run in last when we exit that page from stack");
  }

  int counter = 0;

  Color favColor = Colors.black;

  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    print("build function run after init state");
    print('build run in each new setState call to update ui');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter Value'),
            const SizedBox(height: 20),
            Text(
              counter.toString(),
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  color: Colors.green,
                  textColor: Colors.white,
                  child: const Text('Increment Counter'),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  color: Colors.teal,
                  textColor: Colors.white,
                  child: const Text('Decrement Counter'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.teal,
              textColor: Colors.white,
              child: const Text('Back To First Screen'),
            ),
            const SizedBox(height: 20),
            const Divider(thickness: 2, color: Colors.teal),
            const SizedBox(height: 20),
            IconButton(
              onPressed: () {
                setState(() {
                  favColor = Colors.red;
                });
              },
              icon: Icon(
                Icons.favorite_outlined,
                size: 50,
                color: favColor,
              ),
            ),
            const SizedBox(height: 20),
            const Divider(thickness: 2, color: Colors.teal),
            const SizedBox(height: 20),
            const Text('Ternary Operator with setState in Action'),
            IconButton(
              onPressed: () {
                setState(() {
                  isFav = !isFav;
                });
              },
              icon: Icon(
                isFav ? Icons.favorite_outlined : Icons.favorite_border,
                size: 50,
                color: isFav ? Colors.red : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Stateful vs stateless Widget in flutter
// stateless widget has no state in it, It rerender completely, e.g Icon, Text
// stateful widget has state in it and in every setstae call back stateful widget build method will run , eg Check Box, TextField

//Hot Reload vs Hot restart
