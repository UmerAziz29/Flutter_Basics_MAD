import 'package:flutter/material.dart';

// Widgets:

// Text Widget
Text getTextStyle(String txt, double fs, Color c) {
  return Text(
    txt,
    style: TextStyle(fontSize: fs, color: c),
  );
}

// Text Form Field Widget
TextFormField getTextFormField(TextEditingController contName, String hinttext,
    String labeltext, Icon pIcon, Icon sIcon) {
  return TextFormField(
    controller: contName,
    decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hinttext,
        labelText: labeltext,
        prefixIcon: pIcon,
        suffixIcon: sIcon),
  );
}

// Elevated Button
ElevatedButton getElevatedButton(String? txt, {required onpress}) {
  return ElevatedButton(onPressed: onpress, child: Text(txt!));
}

// List View
ListView getListView(Axis direction, String? title, Text? subtitle, Icon lIcon,
    Icon tIcon, Color tColor) {
  return ListView(
    scrollDirection: direction,
    children: [
      ListTile(
          title: Text(title!),
          subtitle: subtitle,
          leading: lIcon,
          trailing: tIcon,
          tileColor: tColor)
    ],
  );
}

// List View Builder
// ListView.builder getListViewBuilder() {
//   return ListView.builder(itemBuilder: itemBuilder)
// }

// Check Box
// Control Affinity
CheckboxListTile getCheckBoxListTile(
    ListTileControlAffinity position, String? title, bool val,
    {required onChanged}) {
  return CheckboxListTile(
      controlAffinity: position,
      title: Text(title!),
      value: val,
      onChanged: onChanged);
}

// Radio Button
RadioListTile getRadioListTile(String title, String val, String gVal,
    {required onChanged}) {
  return RadioListTile(
      title: Text(title), value: val, groupValue: gVal, onChanged: onChanged);
}

// on()async{
//   showDialog(context: context, barrierDismissible:false, builder: builder,builder: (context) {
//                               return const AlertDialog(
//                                 title: Text('',style: TextStyle(fontSize: 30),
//                                 );)}
// }