import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends StatefulWidget {
  const SharedPref({super.key});

  @override
  State<SharedPref> createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  int? counter;
  SharedPreferences? prefs;

  void fetchCounterValue() async {
    //SharedPreferences = await SharedPreferences.getInstance();
    //prefs = counter = prefs.getInt('counter');
  }

  @override
  void initState() {
    fetchCounterValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared Prefrences Example'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (counter == null) {
            counter = 1;
          } else {
            counter = counter! + 1;
          }
          //prefs.setInt('counter', counter!);
          setState(() {});
        },
        child: const Text('+'),
      ),
      body: Center(
          child: counter == 0
              ? const Text('Counter: 0')
              : Text('Counter: $counter!')),
    );
  }
}
