import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mad_flutter/Database/DBHandler.dart';
import 'package:mad_flutter/Models/Teacher.dart';
import 'package:mad_flutter/Screens/SQFLite.dart';

class ViewData extends StatefulWidget {
  const ViewData({super.key});

  @override
  State<ViewData> createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  List<Teacher> tlist = [];
  //XFile? imgdata;
  String? imgdata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data View"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      DBHandler db = DBHandler.instance;
                      tlist = await db.getAllTeachers();
                      setState(() {});
                    },
                    child: const Text('View Data!')),
                const SizedBox(
                  width: 225,
                ),
                FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return const SQFLite();
                        }),
                      );
                    },
                    child: const Icon(Icons.add)),
              ],
            ),
            SizedBox(
              height: 700,
              child: ListView.builder(
                  itemCount: tlist.length,
                  itemBuilder: (context, index) {
                    Teacher t = tlist[index];
                    imgdata = t.picture;
                    return Card(
                        elevation: 5,
                        child: Row(children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundImage:
                                            MemoryImage(base64Decode(imgdata!)),
                                      ),
                                    ),
                                    Text(
                                      'Teacher Name: ${t.name}',
                                      style: const TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                Text('Teacher ID: ${t.id}',
                                    style: const TextStyle(fontSize: 20)),
                                Text('Age: ${t.age}',
                                    style: const TextStyle(fontSize: 20)),
                                Text('Contact Number: ${t.contact}',
                                    style: const TextStyle(fontSize: 20)),
                              ]),
                        ]));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
