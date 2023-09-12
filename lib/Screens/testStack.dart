import 'package:flutter/material.dart';

class StackSc extends StatefulWidget {
  const StackSc({super.key});

  @override
  State<StackSc> createState() => _StackScState();
}

class _StackScState extends State<StackSc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing Stack'),
      ),
      body: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.green,
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 200,
                  width: 100,
                  color: Colors.blue,
                )
              ],
            )
          ],
        ),
        Positioned(
            //top: 50,
            //right: 50,
            //left: 50,
            bottom: 50,
            child: ElevatedButton(onPressed: () {}, child: const Text('Test')))
      ]),
    );
  }
}
