import 'package:flutter/material.dart';
import 'package:mad_flutter/API/LogSignAuth.dart';
import 'package:mad_flutter/Models/SignUp.dart';
import 'package:mad_flutter/Screens/LogIn.dart';

TextEditingController cNIC = TextEditingController();
TextEditingController cName = TextEditingController();
TextEditingController cContact = TextEditingController();
TextEditingController cAddress = TextEditingController();
TextEditingController cPass = TextEditingController();
TextEditingController cRole = TextEditingController();
bool isObscure = true;

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Sign Up')),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                      controller: cName,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Name',
                        labelText: 'Name',
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
                      controller: cContact,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Contact',
                        labelText: 'Contact',
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
                      controller: cAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Address',
                        labelText: 'Address',
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
                      controller: cRole,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Role',
                        labelText: 'Role',
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
                      obscureText: isObscure,
                      controller: cPass,
                      decoration: InputDecoration(
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
                      User u = User();
                      u.nic = cNIC.text;
                      u.name = cName.text;
                      u.contact = cContact.text;
                      u.address = cAddress.text;
                      u.password = cPass.text;
                      u.role = cRole.text;
                      int code = await AuthAPI().suAccount(u);
                      if (code == 200) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title:
                                    const Text("Account Created Successfully!"),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const LogIn();
                                        }));
                                      },
                                      child: const Center(child: Text('OK')))
                                ],
                              );
                            });
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const AlertDialog(
                                title: Text("Account Creation Failed"),
                              );
                            });
                      }
                    },
                    child: const Text('Sign Up'))
              ],
            )
          ],
        ),
      ),
    );
  }
}



              // TextFormField(
              //   controller: niccontroller,
              //   decoration: InputDecoration(
              //     border:OutlineInputBorder(),
              //     hintText: 'NIC',
              //     labelText: 'NIC',                 
              //   ),validator: (String? val){
              //     if(val==null || val.isEmpty)
              //     return 'Provide NIC';
              //     else return null;
              //   },
              // ),
