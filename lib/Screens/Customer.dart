// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:mad_flutter/API/LogSignAuth.dart';
// import 'package:mad_flutter/Global/GlobalProductList.dart';
// import 'package:mad_flutter/Models/Products.dart';

// class Customer extends StatefulWidget {
//   const Customer({super.key});

//   @override
//   State<Customer> createState() => _CustomerState();
// }

// class _CustomerState extends State<Customer> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(child: Text('Customer Screen')),
//       ),
//       body: Column(
//         children: [
//           Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//             ElevatedButton(
//                 onPressed: () async {
//                   var httpresponse = await AuthAPI().getProducts();
//                   if (httpresponse != null) {
//                     if (httpresponse.statusCode == 200) {
//                       var json = jsonDecode(httpresponse.body);
//                       var usr = Products.FromMap(json);
//                     }
//                   }
//                 },
//                 child: const Text('Get All Products'))
//           ]),
//           SizedBox(
//             height: 600,
//             child: ListView.builder(
//                 itemCount: plist.length,
//                 itemBuilder: (context, index) {
//                   Product p = plist[index];
//                   return Card(
//                     child: Column(
//                       children: [
//                         Text('User ID: ${p.name}'),
//                         Text('User ID: ${p.price}'),
//                         Text('User ID: ${p.qty}'),
//                       ],
//                     ),
//                   );
//                 }),
//           ),
//         ],
//       ),
//     );
//   }
// }
