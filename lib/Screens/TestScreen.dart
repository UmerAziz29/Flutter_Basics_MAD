import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

TextEditingController cName = TextEditingController();
bool cState = false;

class testScreen extends StatefulWidget {
  const testScreen({super.key});

  @override
  State<testScreen> createState() => _testScreenState();
}

TextEditingController test = TextEditingController();
bool state = false;
String gVal = '';
XFile? img;
// List<String> mil = ['A', 'B', 'C'];

class _testScreenState extends State<testScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Screen'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: ElevatedButton(onPressed: () {}, child: const Text('EB')),
          ),

          ElevatedButton(
              onPressed: () {
                ImagePicker().pickImage(source: ImageSource.gallery);
              },
              child: const Text('Get Image')),
          //Rich Text
          // RichText(
          //   text: TextSpan(
          //     style: DefaultTextStyle.of(context).style,
          //     children: const <TextSpan>[
          //       TextSpan(
          //         text: 'Not Bold',
          //       ),
          //       TextSpan(
          //           text: '\nBold',
          //           style: TextStyle(fontWeight: FontWeight.bold)),
          //     ],
          //   ),
          // )
          //Image.file(fit:BoxFit.fill),
          //bytes = filename.readAsBytes
          //String s = base64Encode(bytes)
        ],
      ),
    );
  }
}

// CheckBoxListTile:
          // CheckboxListTile(
          //     controlAffinity: ListTileControlAffinity.trailing,
          //     title: const Text('CheckBox'),
          //     value: cState,
          //     onChanged: (bool? currentState) {
          //       setState(() {
          //         if (currentState != null) {
          //           cState = currentState;
          //           }
          //           });
          //           })
// RadioListTile
          // RadioListTile(
          //     title: const Text('Cricket'),
          //     value: 'Cricket',
          //     groupValue: gVal,
          //     onChanged: (String? value) {
          //       if (value == null) return;
          //       setState(() {
          //         gVal = value;
          //       });
          //     }),
// const MyDropdownMenu(),
