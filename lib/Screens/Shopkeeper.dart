import 'package:flutter/material.dart';
import 'package:mad_flutter/Global/SkCust.dart';
import 'package:mad_flutter/Screens/DrawerScreen.dart';

TextEditingController cProd = TextEditingController();
TextEditingController cPrice = TextEditingController();
TextEditingController cQty = TextEditingController();

class Shopkeeper extends StatefulWidget {
  const Shopkeeper({super.key});

  @override
  State<Shopkeeper> createState() => _ShopkeeperState();
}

class _ShopkeeperState extends State<Shopkeeper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(), //drawerview(),
      appBar: AppBar(
        title: const Text('Shop Dashboard'),
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
                    controller: cProd,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.production_quantity_limits),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      hintText: 'Product',
                      labelText: 'Product',
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
                    controller: cPrice,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.price_check),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      hintText: 'Product Price',
                      labelText: 'Product Price',
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
                    controller: cQty,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.exposure_plus_1),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      hintText: 'Product Quantity',
                      labelText: 'Product Quantity',
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     ElevatedButton(
          //         onPressed: () async {
          //           //User u = User();
          //           Product p = Product();
          //           p.product = cProd.text;
          //           p.productprice = cPrice.text;
          //           p.productquantity = cQty.text;
          //           int code = await AuthAPI().skProduct(p);
          //           if (code == 200) {
          //             showDialog(
          //                 context: context,
          //                 builder: (context) {
          //                   return AlertDialog(
          //                     title: const Text("Product Added Successfully!"),
          //                     actions: [
          //                       ElevatedButton(
          //                           onPressed: () {
          //                             Navigator.of(context).push(
          //                                 MaterialPageRoute(builder: (context) {
          //                               return const Customer();
          //                             }));
          //                           },
          //                           child: const Center(child: Text('OK')))
          //                     ],
          //                   );
          //                 });
          //           } else {
          //             showDialog(
          //                 context: context,
          //                 builder: (context) {
          //                   return const AlertDialog(
          //                     title: Text("Unable To Add Product!"),
          //                   );
          //                 });
          //           }
          //         },
          //         child: const Text('Add Product'))
          //   ],
          // ),
        ],
      ),
    );
  }

  Drawer drawerview() {
    return const Drawer(
        //   child: ListView(
        // children: [
        //   Stack(children: const [
        //     CircleAvatar(
        //       radius: 70,
        //     ),
        //     Positioned(left: 20, top: 40, child: Icon(Icons.camera))
        //   ]),
        //   Text(usr!.name),
        //   const Text('Shopkeeper'),
        //   const Divider(
        //     color: Colors.black,
        //     thickness: 7,
        //   ),
        //   const ListTile(
        //     title: Text('New Product'),
        //   )
        // ],
        );
  }
}
