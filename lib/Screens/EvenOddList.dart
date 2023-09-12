import 'package:flutter/material.dart';

TextEditingController inp = TextEditingController();
TextEditingController en = TextEditingController();
TextEditingController on = TextEditingController();
TextEditingController count = TextEditingController();
int cn = 0;
int n = 0;
int e = 0;
int o = 0;
List<int> numbers = [];
List<int> enumbers = [];
List<int> onumbers = [];

class ListEO extends StatelessWidget {
  const ListEO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250,
                  child: TextFormField(
                      controller: inp,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Numbers',
                        labelText: 'Numbers',
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextFormField(
                      controller: count,
                      readOnly: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        hintText: 'Counter',
                        labelText: 'Total Numbers Counter',
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextFormField(
                      controller: en,
                      readOnly: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Even Numbers',
                        labelText: 'Even Numbers',
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextFormField(
                      controller: on,
                      readOnly: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Odd Numbers',
                        labelText: 'Odd Numbers',
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    ElevatedButton(
                      onPressed: fl,
                      child: Text('Add To List'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: eo,
                      child: Text('Process'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: clear,
                      child: Text('Clear'),
                    ),
                  ],
                ),
              ])),
    );
  }
}

void clear() {
  cn = 0;
  numbers.clear();
  enumbers.clear();
  onumbers.clear();
}

void fl() {
  cn++;
  count.text = cn.toString();
  n = int.parse(inp.text);
  numbers.add(n);
}

void eo() {
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      enumbers.add(numbers[i]);
    } else {
      onumbers.add(numbers[i]);
    }
  }
  en.text = enumbers.toString();
  on.text = onumbers.toString();
}
