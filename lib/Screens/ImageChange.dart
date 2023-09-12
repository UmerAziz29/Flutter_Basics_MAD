import 'package:flutter/material.dart';

String cmd = "Off";
bool isOn = false;
String on = "assets/Images/On.jpg";
String w = "assets/Images/Witcher_02.jpg";
String i = w;

class ImageChange extends StatefulWidget {
  const ImageChange({super.key});

  @override
  State<ImageChange> createState() => _ImageChangeState();
}

class _ImageChangeState extends State<ImageChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Change'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Image.asset(i),
            ),
            ElevatedButton(
                onPressed: () {
                  if (isOn == false) {
                    setState(() {
                      cmd = "Off";
                      isOn = true;
                      i = on;
                    });
                  } else {
                    setState(() {
                      cmd = "On";
                      isOn = false;
                      i = w;
                    });
                  }
                },
                child: Text(cmd)),
          ],
        )),
      ),
    );
  }
}
