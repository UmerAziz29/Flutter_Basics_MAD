class Student {
  String Name;
  int Semester;
  double CGPA;

  Student(this.Name, this.Semester, this.CGPA);
  static List<Student> getstudents() {
    List<Student> slist = [
      Student('Ali Akbar Sattar Sati', 8, 3.8),
      Student('Syed Saqib Shah', 8, 3.5),
      Student('Aliyan Hafeez', 8, 3.6),
      Student('Muhammad Hamza', 8, 2.9),
      Student('Umer Aziz', 8, 3.06),
      Student('Hamza Sagheer', 8, 2.8),
      Student('Khubaib Ahmed', 8, 3.9),
      Student('Zeeshan Ahmed', 8, 3.85),
      Student('Qamar Ali Sudozai', 8, 3.85),
    ];
    return slist;
  }
}
