import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mad_flutter/API/LogSignAuth.dart';
import 'package:mad_flutter/Models/SignIn.dart';
import 'package:mad_flutter/Screens/Shopkeeper.dart';
import 'package:mad_flutter/Screens/TestScreen.dart';
//import 'package:http/http.dart' as http;

TextEditingController cNIC = TextEditingController();
TextEditingController cPass = TextEditingController();
final formkey = GlobalKey<FormState>();
//List<UserAccounts> useracc_list = [];
bool isObscure = true;

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Log In')),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: TextFormField(
                    controller: cNIC,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      hintText: 'NIC',
                      labelText: 'NIC',
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: TextFormField(
                    //style: TextStyle(color: color),
                    obscureText: isObscure,
                    controller: cPass,
                    decoration: InputDecoration(
                      // prefixIconColor: color,
                      // suffixIconColor: color,
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      hintText: 'Password',
                      labelText: 'Password',
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    var httpresponse =
                        await AuthAPI().getUsers(cNIC.text, cPass.text);
                    if (httpresponse != null) {
                      if (httpresponse.statusCode == 200) {
                        var json = jsonDecode(httpresponse.body);
                        var usr = UserAccounts.FromMap(json);
                        if (usr.role == "S") {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const Shopkeeper();
                          }));
                        } else {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const testScreen();
                          }));
                        }
                      }
                    }
                  },
                  child: const Text('Login'))
            ],
          )
        ],
      ),
    );
  }
}
