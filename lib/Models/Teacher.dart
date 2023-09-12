class Teacher {
  late int id;
  late String name;
  late int age;
  late String contact;
  late String picture;
  Teacher(this.name, this.age, this.contact, this.picture);

  Map<String, dynamic> toMap() {
    return {"name": name, "age": age, "contact": contact, "picture": picture};
  }

  Teacher.fromMap(Map<String, dynamic> map) {
    id = map["ID"];
    name = map["name"];
    age = map["age"];
    contact = map["contact"];
    picture = map["picture"];
  }
}
