import 'dart:convert';

class Product {
  int id;
  int price;
  String name;
  int qty;
  Product(this.id, this.name, this.price, this.qty);
  static String toMap(List<Product> plist) {
    List<Map<String, dynamic>> pmap = [];
    for (int i = 0; i < plist.length; i++) {
      pmap.add({
        "id": plist[i].id,
        "price": plist[i].price,
        "name": plist[i].name,
        "qty": plist[i].qty
      });
    }
    return jsonEncode(pmap);
  }

  static List<Product> getProdcuts(String jsonstring) {
    dynamic data = jsonDecode(jsonstring);
    List<Product> plist = [];
    for (int i = 0; i < data.length; i++) {
      Map<String, dynamic> map = data[i];
      plist.add(Product(map["id"], map["name"], map["price"], map["qty"]));
    }
    return plist;
  }
}
