import 'package:flutter/material.dart';
import 'package:mad_flutter/Screens/Calculator.dart';
import 'package:mad_flutter/Screens/Checkbox.dart';
import 'package:mad_flutter/Screens/DataFromAPI.dart';
import 'package:mad_flutter/Screens/DataTable.dart';
import 'package:mad_flutter/Screens/DropDownMenu.dart';
import 'package:mad_flutter/Screens/EvenOddList.dart';
import 'package:mad_flutter/Screens/ImageChange.dart';
import 'package:mad_flutter/Screens/ListView.dart';
import 'package:mad_flutter/Screens/ListViewBuilder.dart';
import 'package:mad_flutter/Screens/LogIn.dart';
import 'package:mad_flutter/Screens/LogInScreen.dart';
import 'package:mad_flutter/Screens/ProductCart.dart';
import 'package:mad_flutter/Screens/RadioButton.dart';
import 'package:mad_flutter/Screens/Rows&Columns.dart';
import 'package:mad_flutter/Screens/SQFLite.dart';
import 'package:mad_flutter/Screens/SharedPref.dart';
import 'package:mad_flutter/Screens/SignUp.dart';
import 'package:mad_flutter/Screens/TestScreen.dart';
import 'package:mad_flutter/Screens/ViewData.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

int? _selectedValue = 1;

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Selection Screen')),
      ),
      body: Center(
        //SingleChildScrollView(
        //scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const RowsandColumns();
                      }));
                    },
                    child: const Text("Rows & Columns >")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Calculator();
                      }));
                    },
                    child: const Text("Calculator >")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const ListEO();
                      }));
                    },
                    child: const Text("Even or Odd >")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const LogInScreen();
                      }));
                    },
                    child: const Text("Log In >")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const ImageChange();
                      }));
                    },
                    child: const Text("Change Image >")),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const ListEO();
                    }));
                  },
                  child: const Card(
                    color: Colors.red,
                    child: Text("List Task"),
                  )),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const List_View();
                      }));
                    },
                    child: const Text("List View >")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const ListViewBuilder();
                      }));
                    },
                    child: const Text("List View Builder >")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Check_Box();
                      }));
                    },
                    child: const Text("Checkbox >")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const RadioBtn();
                      }));
                    },
                    child: const Text("Radio Button >")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const DDM();
                      }));
                    },
                    child: const Text("Drop Down Menu >")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const SQFLite();
                      }));
                    },
                    child: const Text("Database SQF Lite >")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const ViewData();
                      }));
                    },
                    child: const Text("View Database Data >")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const SharedPref();
                      }));
                    },
                    child: const Text("Shared Prefrences >")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const ProductCart();
                      }));
                    },
                    child: const Text("Product Cart >")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const APIDataScreen();
                      }));
                    },
                    child: const Text("Data From API >")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const SignUp();
                      }));
                    },
                    child: const Text("SignUp API To Database>")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const LogIn();
                      }));
                    },
                    child: const Text("LogIn API Authentication>")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Data_Table();
                      }));
                    },
                    child: const Text("Data Table >")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const testScreen();
                      }));
                    },
                    child: const Text("Test Screen >")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
