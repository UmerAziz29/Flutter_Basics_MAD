import 'package:flutter/material.dart';
import 'package:mad_flutter/Screens/SelectionScreen.dart';

TextEditingController c_user = TextEditingController();
TextEditingController c_pass = TextEditingController();
bool isObscure = true;
Color c = Colors.grey;

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          c = Colors.black;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        color: c,
                        child: Text('Black'),
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          c = Colors.green;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        color: c,
                        child: Text('Green'),
                      )),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          c = Colors.blue;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        color: c,
                        child: Text('Blue'),
                      )),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 300,
                child: TextFormField(
                    style: TextStyle(color: c),
                    controller: c_user,
                    decoration: InputDecoration(
                      prefixIconColor: c,
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      hintText: 'Username',
                      labelText: 'Username',
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: TextFormField(
                    style: TextStyle(color: c),
                    obscureText: isObscure,
                    controller: c_pass,
                    decoration: InputDecoration(
                      prefixIconColor: c,
                      suffixIconColor: c,
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
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) {
                        return const SelectionScreen();
                      },
                    ));
                  },
                  child: const Text('LogIn')),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  VerticalDivider(
                    thickness: 15,
                    color: Colors.red,
                  ),
                  // Divider(thickness: 50,color: Colors.red,),
                  // Text('OR'),Divider(thickness: 50,color: Colors.black,),
                  // Text('SignUp'),
                ],
              ),
              //Divider(thickness: 15,color: Colors.red,),
            ],
          ),
        ),
      ),
    );
  }
}
