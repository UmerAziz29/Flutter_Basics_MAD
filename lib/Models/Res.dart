class StudentResult {
  String teacherName, courseName, section, venue, timeIn, timeOut;

  StudentResult({
    required this.teacherName,
    required this.courseName,
    required this.section,
    required this.venue,
    required this.timeIn,
    required this.timeOut,
  });
  static List<StudentResult> getResultList() {
    return <StudentResult>[
      StudentResult(
          teacherName: "Amir",
          courseName: "WE",
          section: "BCS-5A",
          venue: "LT-1",
          timeIn: "08:30",
          timeOut: "09:55"),
      StudentResult(
          teacherName: "Azhar Jamil",
          courseName: "VP",
          section: "BCS-5A",
          venue: "LT-6",
          timeIn: "08:35",
          timeOut: "09:50"),
      StudentResult(
          teacherName: "Umar Farooq",
          courseName: "PF",
          section: "BCS-1A",
          venue: "LT-2",
          timeIn: "08:30",
          timeOut: "10:00"),
      StudentResult(
          teacherName: "Naeem",
          courseName: "TBW",
          section: "BCS-8A",
          venue: "LT-8",
          timeIn: "08:30",
          timeOut: "09:56"),
      StudentResult(
          teacherName: "Shahid Jameel",
          courseName: "PDC",
          section: "BCS-6A",
          venue: "LT-3",
          timeIn: "08:40",
          timeOut: "09:55"),
      StudentResult(
          teacherName: "Dr. Mohsin",
          courseName: "CAG",
          section: "BCS-1A",
          venue: "LT-4",
          timeIn: "08:40",
          timeOut: "09:55"),
      StudentResult(
          teacherName: "Shafiq Gondal",
          courseName: "OS",
          section: "BCS-3A",
          venue: "LT-5",
          timeIn: "08:30",
          timeOut: "09:55"),
      StudentResult(
          teacherName: "Qamar",
          courseName: "STP",
          section: "BCS-4A",
          venue: "LT-5",
          timeIn: "08:30",
          timeOut: "09:55"),
    ];
  }
}
