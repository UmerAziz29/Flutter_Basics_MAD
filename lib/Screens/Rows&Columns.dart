import 'package:flutter/material.dart';

class RowsandColumns extends StatelessWidget {
  const RowsandColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows & Columns'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 25,
                  width: 80,
                  color: Colors.red,
                  margin: const EdgeInsets.only(left: 10),
                  child: const Text('Name:'),
                ),
                const SizedBox(
                  height: 10,
                  width: 10,
                ),
                Container(
                  height: 25,
                  width: 80,
                  color: Colors.green,
                  child: const Text('Ali AKbar'),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 25,
                  width: 80,
                  color: Colors.red,
                  margin: const EdgeInsets.only(left: 10),
                  child: const Text('Age:'),
                ),
                const SizedBox(
                  height: 10,
                  width: 10,
                ),
                Container(
                  height: 25,
                  width: 80,
                  color: Colors.green,
                  child: const Text('20'),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 25,
                  width: 80,
                  color: Colors.red,
                  margin: const EdgeInsets.only(left: 10),
                  child: const Text('Matric %:'),
                ),
                const SizedBox(
                  height: 10,
                  width: 10,
                ),
                Container(
                  height: 25,
                  width: 80,
                  color: Colors.green,
                  child: const Text('75%'),
                ),
              ],
            ),
            Container(
              height: 25,
              width: 80,
              color: Colors.green,
              child: const Text('Add'),
            ),
            Row(
              children: [
                Container(
                  height: 25,
                  width: 80,
                  color: Colors.red,
                  margin: const EdgeInsets.only(left: 10),
                  child: const Text('--'),
                ),
                const SizedBox(
                  height: 10,
                  width: 10,
                ),
                Container(
                  height: 25,
                  width: 80,
                  color: Colors.green,
                  child: const Text('--'),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 25,
                  width: 80,
                  color: Colors.red,
                  margin: const EdgeInsets.only(left: 10),
                  child: const Text('--'),
                ),
                const SizedBox(
                  height: 10,
                  width: 10,
                ),
                Container(
                  height: 25,
                  width: 80,
                  color: Colors.green,
                  child: const Text('--'),
                ),
              ],
            ),
          ],
        ),
        //Padding(padding: EdgeInsets.only(left: 5)),
      ),
    );
  }
}
