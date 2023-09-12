import 'package:flutter/material.dart';
import 'package:mad_flutter/Global/GlobalProductList.dart';
import 'package:mad_flutter/Models/Products.dart';

class CartDetail extends StatefulWidget {
  List<Product> plist;

  CartDetail(this.plist, {super.key});

  @override
  State<CartDetail> createState() => _CartDetailState();
}

int totalBill = 0;

class _CartDetailState extends State<CartDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: widget.plist.length,
          itemBuilder: (context, index) {
            Product p = widget.plist[index];
            return Card(
              elevation: 5,
              child: Column(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          if (plist[index].qty > 0) {
                            plist[index].qty -= 1;
                            totalBill -= plist[index].price;
                          }
                        });
                      },
                      icon: const Icon(Icons.remove)),
                  Text(
                    'Product Name: ${p.name}\nProduct Quantity: ${p.qty}\nProduct Price: ${p.price}',
                    style: const TextStyle(fontSize: 20),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          plist[index].qty += 1;
                          totalBill += plist[index].price;
                        });
                      },
                      icon: const Icon(Icons.add)),
                  Text('$totalBill'),
                ],
              ),
            );
          }),
    );
  }
}
