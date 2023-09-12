import 'package:flutter/material.dart';
import 'package:mad_flutter/Models/Res.dart';

List<StudentResult> resultlist = [];
TextEditingController cDate = TextEditingController();

class Data_Table extends StatefulWidget {
  const Data_Table({super.key});

  @override
  State<Data_Table> createState() => _Data_TableState();
}

class _Data_TableState extends State<Data_Table> {
  @override
  void initState() {
    resultlist = StudentResult.getResultList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Report")),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text("Select Date")),
              SizedBox(
                height: 45,
                width: 250,
                child: TextFormField(
                    controller: cDate,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.calendar_month),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      hintText: 'XX-XX-20XX',
                      labelText: 'Date',
                    )),
              ),
            ],
          ),
          Row(
            children: [
              DataTable(
                  columns: const [
                    DataColumn(label: Text('Teacher Name')),
                    DataColumn(label: Text('Course Name')),
                    DataColumn(label: Text('Section')),
                    DataColumn(label: Text('Venue')),
                    DataColumn(label: Text('Time In')),
                    DataColumn(label: Text('Time Out')),
                  ],
                  rows: resultlist.map((e) {
                    Color c = Colors.black;
                    return DataRow(cells: [
                      DataCell(Text(
                        e.teacherName,
                        style: TextStyle(color: c),
                      )),
                      DataCell(Text(
                        e.courseName,
                        style: TextStyle(color: c),
                      )),
                      DataCell(Text(
                        e.section.toString(),
                        style: TextStyle(color: c),
                      )),
                      DataCell(Text(
                        e.venue.toString(),
                        style: TextStyle(color: c),
                      )),
                      DataCell(Text(
                        e.timeIn.toString(),
                        style: TextStyle(color: c),
                      )),
                      DataCell(Text(
                        e.timeOut.toString(),
                        style: TextStyle(color: c),
                      )),
                    ]);
                  }).toList()),
            ],
          ),
        ],
      ),
    );
  }
}
