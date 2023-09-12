import 'package:flutter/material.dart';
import 'package:mad_flutter/Models/Product.dart';

class Check_Box extends StatefulWidget {
  const Check_Box({super.key});
  @override
  State<Check_Box> createState() => _Check_BoxState();
}

bool WavyState = false, PepsiState = false, ChocolateState = false;
String currentText = '';
int WavyAmount = 0, PepsiAmount = 0, ChocolateAmount = 0, TotalBill = 0;

class _Check_BoxState extends State<Check_Box> {
  List<Product> plist = [];
  // @override
  // void initState() {
  //   plist = Product.getProducts();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox List Tile'),
      ),
      body: Column(
        children: [
          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Wavy Rs. 50'),
              value: WavyState,
              onChanged: (bool? currentState) {
                setState(() {
                  if (currentState != null) {
                    WavyState = currentState;
                    // if (WavyState) {
                    //   currentText = 'Wavy Checked';
                    // } else {
                    //   currentText = 'Wavy Unchecked';
                    // }
                  }
                });
              }),
          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Pepsi Rs. 120'),
              value: PepsiState,
              onChanged: (bool? currentState) {
                setState(() {
                  if (currentState != null) {
                    PepsiState = currentState;
                  }
                });
              }),
          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Chocolate Rs. 100'),
              value: ChocolateState,
              onChanged: (bool? currentState) {
                setState(() {
                  if (currentState != null) {
                    ChocolateState = currentState;
                  }
                });
              }),
          const SizedBox(
            height: 10,
          ),
          Text(currentText),
          ElevatedButton(
              onPressed: () {
                TotalBill = 0;
                plist.clear();
                setState(() {
                  if (WavyState) {
                    plist.add(Product('Wavy', 1, 50));
                    TotalBill += 50;
                  }
                  if (PepsiState) {
                    plist.add(Product('Pepsi', 1, 120));
                    TotalBill += 120;
                  }
                  if (ChocolateState) {
                    plist.add(Product('Chocolate', 1, 100));
                    TotalBill += 100;
                  }
                });
              },
              child: const Text('Add')),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: plist.length,
                itemBuilder: (c, index) {
                  Product p = plist[index];
                  return ListTile(
                    title: Row(
                      children: [
                        Text(
                          p.ProductName,
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (plist[index].Quantity > 0) {
                                  plist[index].Quantity -= 1;
                                }
                                TotalBill -= plist[index].price;
                              });
                            },
                            icon: const Icon(Icons.remove)),
                        Text('${p.Quantity}'),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                plist[index].Quantity += 1;
                                TotalBill += plist[index].price;
                              });
                            },
                            icon: const Icon(Icons.add)),
                      ],
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            plist.removeAt(index);
                            //TotalBill -= plist[index].price;
                          });
                        },
                        icon: const Icon(Icons.delete)),
                  );
                }),
          ),
          Text('Total Bill: $TotalBill'),

          // ElevatedButton(
          //     onPressed: () {
          //       //TotalBill = 0;
          //     },
          //     child: const Text('Calculate Bill')),
          // Text('Total Bill: $TotalBill'),

          // ElevatedButton(
          //     onPressed: () {
          //       if (WavyState == true) {
          //         WavyAmount += 1;
          //         Row(
          //           children: [
          //             const Text('Wavy:'),
          //             IconButton(
          //                 onPressed: () {
          //                   WavyAmount -= 1;
          //                 },
          //                 icon: const Icon(Icons.remove)),
          //             const Text('testing'),
          //             IconButton(
          //                 onPressed: () {
          //                   WavyAmount += 1;
          //                 },
          //                 icon: const Icon(Icons.add))
          //           ],
          //         );
          //       }

          //       if (PepsiState == true) {
          //         PepsiAmount += 1;
          //       }
          //       if (ChocolateState == true) {
          //         ChocolateAmount += 1;
          //       }
          //     },
          //     child: const Text('Add')),
        ],
      ),
    );
  }
}
