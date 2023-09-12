class Users {
  late int uid;
  late String uName, userName, email, phone, website;
  late String street, suite, city, zipcode;
  late String lat, lng;
  late String cName, catchPhrase, bs;
  //late List<String> address;
  //late Company company;
  //Users.fromJson(Map<String, dynamic> json)
  Users.FromMap(Map<String, dynamic> map) {
    uid = map["id"];
    uName = map["name"];
    userName = map["username"];
    email = map["email"];
    phone = map["phone"];
    website = map["website"];
    //address
    street = map["address"]["street"];
    suite = map["address"]["suite"];
    city = map["address"]["city"];
    zipcode = map["address"]["zipcode"];
    //Geo
    lat = map["address"]["geo"]["lat"];
    lng = map["address"]["geo"]["lng"];
    //Company
    cName = map["company"]["name"];
    catchPhrase = map["company"]["catchPhrase"];
    bs = map["company"]["bs"];
  }
}

// class Address {
//   late String street, suite, city, zipcode;
//   late Geo g;
//   Address.FromMap(Map<String, dynamic> map) {
//     street = map["street"];
//     suite = map["suite"];
//     city = map["city"];
//     zipcode = map["zipcode"];
//     g.lat = map["lat"];
//     g.lng = map["lng"];
//   }
// }

// class Geo {
//   late String lat, lng;
//   Geo.FromMap(Map<String, dynamic> map) {
//     lat = map["lat"];
//     lng = map["lng"];
//   }
// }

// class Company {
//   late String cName, catchPhrase, bs;
//   Company.FromMap(Map<String, dynamic> map) {
//     cName = map["name"];
//     catchPhrase = map["catchPhrase"];
//     bs = map["bs"];
//   }
// }
