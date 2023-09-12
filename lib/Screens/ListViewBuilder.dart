import 'package:flutter/material.dart';
import 'package:mad_flutter/Models/Student.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  List<Student> slist = [];
  @override
  void initState() {
    slist = Student.getstudents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
            itemCount: slist.length,
            itemBuilder: (c, index) {
              Student s = slist[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name:${s.Name}',
                          style: const TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Semester:${s.Semester}',
                          style: const TextStyle(fontSize: 20),
                        ),
                        Text(
                          'CGPA:${s.CGPA}',
                          style: const TextStyle(fontSize: 20),
                        ),
                      ]),
                ),
              );
            }),
      ),
    );

    // child: Center(child: ListView.builder(itemCount: 50, itemBuilder: (BuildContext context, int index){
    // return Container(
    //   color: index%2==0?Colors.amber:Colors.red,
    //   child: Center(child: Text('Container # $index',style:TextStyle(fontSize: 20),)),
    // );}
    //),),
    //),
    //);
  }
}
