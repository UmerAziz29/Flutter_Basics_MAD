import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mad_flutter/API/APIHandler.dart';
import 'package:mad_flutter/Models/APIFetchData.dart';

class APIDataScreen extends StatefulWidget {
  const APIDataScreen({super.key});

  @override
  State<APIDataScreen> createState() => _APIDataScreenState();
}

class _APIDataScreenState extends State<APIDataScreen> {
  List<Users> users_list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data From API'),
      ),
      body: Column(
        children: [
          Container(
            child: ElevatedButton(
              onPressed: () async {
                String? userdata = await APIHandler().getUsers();
                if (userdata != null) {
                  dynamic userJsonList = jsonDecode(userdata);
                  users_list.clear();
                  //users_address.clear();
                  //users_company.clear();
                  for (int i = 0; i < userJsonList.length; i++) {
                    Map<String, dynamic> userMap = userJsonList[i];
                    Users newuser = Users.FromMap(userMap);
                    users_list.add(newuser);
                  }
                  setState(() {});
                }
              },
              child: const Text('Get All Users'),
            ),
          ),
          SizedBox(
            height: 550,
            child: ListView.builder(
                itemCount: users_list.length,
                itemBuilder: (context, index) {
                  Users user = users_list[index];
                  return Card(
                    elevation: 8,
                    child: Column(
                      children: [
                        Text('User ID: ${user.uid}'),
                        Text('Name: ${user.uName}'),
                        Text('Username: ${user.userName}'),
                        Text('User E-mail: ${user.email}'),
                        Text('Street: ${user.street}'),
                        Text('Suite: ${user.suite}'),
                        Text('City: ${user.city}'),
                        Text('Zipcode: ${user.zipcode}'),
                        Text('Latitude: ${user.lat}'),
                        Text('Longitude: ${user.lng}'),
                        Text('Company Name: ${user.cName}'),
                        Text('Catch Phrase: ${user.catchPhrase}'),
                        Text('BS: ${user.bs}'),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
