import 'package:flutter/material.dart';

class List_View extends StatefulWidget {
  const List_View({super.key});

  @override
  State<List_View> createState() => _List_ViewState();
}

class _List_ViewState extends State<List_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: const [
              ListTile(
                title: Text('List View'),
                subtitle: Text('Subtitle Text'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),

              //
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              ListTile(
                title: Text('Dummy Data'),
                subtitle: Text('Data'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                tileColor: Colors.red,
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}
