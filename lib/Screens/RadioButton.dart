import 'package:flutter/material.dart';

class RadioBtn extends StatefulWidget {
  const RadioBtn({super.key});

  @override
  State<RadioBtn> createState() => _RadBtn_DDMState();
}

class _RadBtn_DDMState extends State<RadioBtn> {
  String? gVal;
  String res = '';
  Color a = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Button'),
      ),
      body: Column(
        children: [
          const Text(
            'National sports of Pakistan is:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          RadioListTile(
              title: const Text('Hockey'),
              value: 'Hockey',
              groupValue: gVal,
              onChanged: (String? value) {
                if (value == null) return;
                setState(() {
                  gVal = value;
                });
              }),
          RadioListTile(
              title: const Text('Soccer'),
              value: 'Soccer',
              groupValue: gVal,
              onChanged: (String? value) {
                if (value == null) return;
                setState(() {
                  gVal = value;
                });
              }),
          RadioListTile(
              title: const Text('Cricket'),
              value: 'Cricket',
              groupValue: gVal,
              onChanged: (String? value) {
                if (value == null) return;
                setState(() {
                  gVal = value;
                });
              }),
          RadioListTile(
              title: const Text('Boxing'),
              value: 'Boxing',
              groupValue: gVal,
              onChanged: (String? value) {
                if (value == null) return;
                setState(() {
                  gVal = value;
                });
              }),
          ElevatedButton(
              //style: const ButtonStyle(backgroundColor: Color(Colors.black))),
              onPressed: () {
                setState(() {
                  if (gVal == 'Hockey') {
                    res = 'Correct Answer!';
                  } else {
                    res = 'Wrong Answer!';
                  }
                });
              },
              child: const Text('Check Answer')),
          Text(res),
        ],
      ),
    );
  }
}
