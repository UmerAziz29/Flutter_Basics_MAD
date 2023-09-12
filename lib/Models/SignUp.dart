class User {
  late String nic, name, contact, password, role, address;
  Map<String, dynamic> toJsonString() {
    return {
      "NIC": nic,
      "Name": name,
      "Contact": contact,
      "Address": address,
      "Password": password,
      "Role": role
    };
  }
}
