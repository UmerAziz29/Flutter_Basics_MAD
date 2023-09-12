class UserAccounts {
  late String uNIC, uPass, role;

  UserAccounts.FromMap(Map<String, dynamic> map) {
    uNIC = map["NIC"];
    uPass = map["Password"];
    role = map["Role"];
  }
}
