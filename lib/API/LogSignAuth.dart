import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mad_flutter/Models/SignUp.dart';

class AuthAPI {
  String ip = "https://localhost:44350/api/";
  Future<int> createAccount(String nic, String name, String address,
      String password, String contact, String role) async {
    String url = '''${ip}Accounts/SignUp?nic=$nic
    &name=$name
    &contact=$contact
    &address=$address
    &password=$password
    &role=$role''';
    print(url);
    var response = await http.post(Uri.parse(url));
    return response.statusCode;
  }

  Future<int> suAccount(User u) async {
    String url = '${ip}Accounts/SignUp/';
    print(url);
    Map<String, dynamic> jsonstring = u.toJsonString();
    String reqbody = jsonEncode(jsonstring);
    print(reqbody);
    var response = await http.post(Uri.parse(url),
        headers: <String, String>{
          'Content-type': 'application/json; charset=UTF-8'
        },
        body: reqbody);
    return response.statusCode;
  }

  Future<http.Response?> getUsers(String NIC, String Pass) async {
    String url = '${ip}Accounts/SignIn?nic=$NIC&pass=$Pass';
    var response = await http.get(Uri.parse(url));
    if (response.statusCode != 200) return null;
    return response;
  }
}
