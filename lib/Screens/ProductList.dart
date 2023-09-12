import 'package:flutter/material.dart';
import 'package:mad_flutter/Global/GlobalProductList.dart';
import 'package:mad_flutter/Models/Products.dart';
import 'package:mad_flutter/Screens/CartDetail.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:badges/badges.dart' as bg;

class ProductList extends StatefulWidget {
  //const ProductList({super.key});

  List<Product> shared_pref_list;
  SharedPreferences pref;
  ProductList(this.shared_pref_list, this.pref, {super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return CartDetail(widget.shared_pref_list);
          }));
        },
        child: bg.Badge(
          badgeContent: Text(
            '${widget.shared_pref_list.length}',
            style: const TextStyle(fontSize: 25),
          ),
          child: const Icon(
            Icons.shopping_cart,
            size: 40,
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Product Screen'),
        actions: [
          bg.Badge(
            badgeContent: Text('${widget.shared_pref_list.length}'),
            child: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: plist.length,
          itemBuilder: (context, index) {
            Product p = plist[index];
            return Card(
              elevation: 5,
              child: Column(
                children: [
                  Text(
                    '${p.name}@ Rs. ${p.price}',
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        widget.shared_pref_list.add(p);
                        String jsonstring =
                            Product.toMap(widget.shared_pref_list);
                        widget.pref.setString('cartlist', jsonstring);
                        setState(() {});
                      },
                      child: const Text('Add to Cart',
                          style: TextStyle(fontSize: 20)))
                ],
              ),
            );
          }),
    );
  }
}
