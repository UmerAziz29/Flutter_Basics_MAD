import 'package:flutter/material.dart';
import 'package:mad_flutter/Models/Products.dart';
import 'package:mad_flutter/Screens/ProductList.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductCart extends StatefulWidget {
  const ProductCart({super.key});

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Product Cart')),
        body: Center(
          child: ElevatedButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                String? jsonstring = prefs.getString('cartlist');
                List<Product> plist = [];
                if (jsonstring != null) {
                  plist = Product.getProdcuts(jsonstring);
                }
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ProductList(plist, prefs);
                }));
              },
              child: const Text('Order Products')),
        ));
  }
}
