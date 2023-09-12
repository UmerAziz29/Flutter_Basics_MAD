import 'package:flutter/material.dart';
import 'package:mad_flutter/Screens/SelectionScreen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Drawer(
      child: Column(children: [
        SizedBox(
          height: height * 0.25,
          width: width * 0.25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              // CircleAvatar(
              //   backgroundImage:
              //       NetworkImage('$imageurl${usr!.profimage}'),
              //   radius: 50,
              // ),
              // Text(usr!.name)
            ],
          ),
        ),
        const Divider(
          color: Colors.black,
        ),
        SizedBox(
          height: height * 0.60,
          //width:width* 0.25,
          child: ListView(
            children: [
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SelectionScreen();
                  }));
                },
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              const ExpansionTile(
                title: Text('Product'),
                children: [
                  ListTile(
                    leading: Icon(Icons.search),
                    title: Text('Search'),
                  ),
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text('Add'),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
