// import 'package:flutter/material.dart';

// class MyDropdownMenu extends StatefulWidget {
//   const MyDropdownMenu({super.key});

//   @override
//   _MyDropdownMenuState createState() => _MyDropdownMenuState();
// }

// class _MyDropdownMenuState extends State<MyDropdownMenu> {
//   String? selectedItem;
//   List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: selectedItem,
//       hint: const Text('Please Select a Value!'),
//       onChanged: (String? newValue) {
//         setState(() {
//           selectedItem = newValue;
//         });
//       },
//       items: items.map((String item) {
//         return DropdownMenuItem<String>(
//           value: item,
//           child: Text(item),
//         );
//       }).toList(),
//     );
//   }
// }
