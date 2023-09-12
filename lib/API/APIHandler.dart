import 'package:http/http.dart' as http;

class APIHandler {
  Future<String?> getUsers() async {
    Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/users");
    var response = await http.get(uri);
    if (response.statusCode != 200) return null;
    return response.body;
  }

  // Future<String?> getPosts() async {
  //   Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/users");
  //   var response = await http.get(uri);
  //   if (response.statusCode != 200) {
  //     return null;
  //   }
  //   return response.body;
  // }
}
