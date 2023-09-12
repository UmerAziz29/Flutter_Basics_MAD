import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

TextEditingController c_n1 = TextEditingController();
TextEditingController c_n2 = TextEditingController();
TextEditingController c_res = TextEditingController();

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  void add() {
    double n1 = double.parse(c_n1.text);
    double n2 = double.parse(c_n2.text);
    double res = n1 + n2;
    c_res.text = res.toString();
  }

  void sub() {
    double n1 = double.parse(c_n1.text);
    double n2 = double.parse(c_n2.text);
    double res = n1 - n2;
    c_res.text = res.toString();
  }

  void div() {
    double n1 = double.parse(c_n1.text);
    double n2 = double.parse(c_n2.text);
    double res = n1 / n2;
    c_res.text = res.toString();
    if (c_n2.text == "0") {
      c_res.text = 'Cannot Divide by 0';
    }
  }

  void mul() {
    double n1 = double.parse(c_n1.text);
    double n2 = double.parse(c_n2.text);
    double res = n1 * n2;
    c_res.text = res.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          TextFormField(
              controller: c_n1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Number 1',
                labelText: 'Number 1',
              )),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
              controller: c_n2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Number 2',
                labelText: 'Number 2',
              )),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
              controller: c_res,
              readOnly: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Result',
                labelText: 'Result',
              )),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              ElevatedButton(onPressed: add, child: const Text('Add')),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(onPressed: sub, child: const Text('Subtract')),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(onPressed: div, child: const Text('Divide')),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(onPressed: mul, child: const Text('Multiply')),
            ],
          )
        ]),
      ),
    );
  }
}
