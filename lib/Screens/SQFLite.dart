import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mad_flutter/Models/Teacher.dart';
import 'package:mad_flutter/Database/DBHandler.dart';
import 'package:mad_flutter/CustomWidgets/Widgets.dart';

class SQFLite extends StatefulWidget {
  const SQFLite({super.key});

  @override
  State<SQFLite> createState() => _SQFLiteState();
}

List<Teacher> tlist = [];
TextEditingController cName = TextEditingController();
TextEditingController cAge = TextEditingController();
TextEditingController cContact = TextEditingController();
XFile? img;
String? imageBytes;

class _SQFLiteState extends State<SQFLite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQF Lite Database'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    //child: imageBytes == null? Center(child: Text("No Image!")):MemoryImage(base64Decode(imageBytes!)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text('Name:   '),
                  SizedBox(
                    height: 75,
                    width: 300,
                    child: getTextFormField(cName, 'Enter Name', 'Name',
                        const Icon(Icons.abc), const Icon(Icons.abc)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text('Age:       '),
                  SizedBox(
                    height: 75,
                    width: 300,
                    child: getTextFormField(cAge, 'Enter Age', 'Age',
                        const Icon(Icons.abc), const Icon(Icons.abc)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text('Contact:'),
                  SizedBox(
                    height: 75,
                    width: 300,
                    child: getTextFormField(
                        cContact,
                        'Enter Contact Number',
                        'Contact',
                        const Icon(Icons.person),
                        const Icon(Icons.contacts)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 175,
                    child: ElevatedButton(
                        onPressed: () async {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text(
                                    'Please select an Image!',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () async {
                                          final imageFile = await ImagePicker()
                                              .pickImage(
                                                  source: ImageSource.camera);
                                          Navigator.pop(context);
                                          if (imageFile != null) {
                                            final bytes =
                                                await imageFile.readAsBytes();
                                            String s = base64Encode(bytes);
                                            imageBytes = s;
                                          }
                                        },
                                        child: const Center(
                                          child: Text(
                                            'Camera',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        )),
                                    ElevatedButton(
                                        onPressed: () async {
                                          final imageFile = await ImagePicker()
                                              .pickImage(
                                                  source: ImageSource.gallery);
                                          Navigator.pop(context);
                                          if (imageFile != null) {
                                            final bytes =
                                                await imageFile.readAsBytes();
                                            String s = base64Encode(bytes);
                                            imageBytes = s;
                                          }
                                        },
                                        child: const Center(
                                          child: Text(
                                            'Gallery',
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        )),
                                  ],
                                );
                              });
                        },
                        child: const Text('Take Picture')),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 175,
                    child: ElevatedButton(
                        onPressed: () async {
                          Teacher tch = Teacher(
                              cName.text,
                              int.parse(cAge.text),
                              cContact.text,
                              imageBytes.toString());
                          DBHandler db = DBHandler.instance;
                          int id = await db.insertTeacher(tch);
                          if (id > 0) {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return const AlertDialog(
                                    title: Text(
                                      'Data inserted Successfully!',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  );
                                });
                          }
                        },
                        child: const Text('Insert Data')),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 175,
                    child: ElevatedButton(
                        onPressed: () async {
                          DBHandler db = DBHandler.instance;
                          tlist = await db.getAllTeachers();
                          setState(() {});
                        },
                        child: const Text('View')),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 175,
                    child: ElevatedButton(
                        onPressed: () async {
                          showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text(
                                    'Press Yes to delete data!',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () async {
                                          DBHandler db = DBHandler.instance;
                                          //int row = await db.deleteTeacher(t.id);
                                          setState(() {
                                            //tlist.removeAt(index);
                                            //int.parse(cID.text)
                                          });
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          'Yes',
                                          style: TextStyle(fontSize: 20),
                                        )),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          'NO',
                                          style: TextStyle(fontSize: 20),
                                        )),
                                  ],
                                );
                              });
                        },
                        child: const Text('Delete')),
                  ),
                ],
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                    itemCount: tlist.length,
                    itemBuilder: (context, index) {
                      Teacher t = tlist[index];
                      return Card(
                          elevation: 5,
                          child: Row(children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Image: ${t.picture}',
                                  ),
                                  Text('Teacher ID: ${t.id}',
                                      style: const TextStyle(fontSize: 20)),
                                  Text(
                                    'Teacher Name: ${t.name}',
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  Text('Age: ${t.age}',
                                      style: const TextStyle(fontSize: 20)),
                                  Text('Contact Number: ${t.contact}',
                                      style: const TextStyle(fontSize: 20)),
                                ]),
                          ]));
                    }),
              ),

              // Container(
              // final imageFile = await ImagePicker().pickImage(source: ImageSource.gallery);
              //   if (imageFile != null) {
              //     final bytes = await imageFile.readAsBytes();
              //     String s = base64Encode(bytes);
              //     imageBytes = s;
              //     }
              //     else
              //     {
              //       Text('No Image Selected!'),
              //     }
              //     )
              // Row(
              //   children: [
              //     Container(
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10.0)),
              //         child: Image.memory(
              //           base64Decode(imageBytes!),
              //           height: 50,
              //           width: 50,
              //         )),
              //   ],
              // ),

              // ElevatedButton(
              //     onPressed: () async {
              //       final imageFile = await ImagePicker()
              //           .pickImage(source: ImageSource.gallery);
              //       if (imageFile != null) {
              //         final bytes = await imageFile.readAsBytes();
              //         String s = base64Encode(bytes);
              //         imageBytes = s;
              //       }
              //     },
              //     child: const Text('Get Image')),
            ],
          ),
        ),
      ),
    );
  }
}
