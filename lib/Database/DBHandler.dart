import 'package:mad_flutter/Models/Teacher.dart';
import 'package:sqflite/sqflite.dart';

class DBHandler {
  DBHandler._privateConstructor();
  Database? _database;
  static DBHandler instance = DBHandler._privateConstructor();
  Future<Database> get database async {
    // if (_database == null) {
    //   _database = await initializeDatabase();
    // }
    _database ??= await initializeDatabase();
    return _database!;
  }

  Future<Database> initializeDatabase() async {
    String dbPath = await getDatabasesPath();
    //print(dbPath);
    String dbname = 'test.db';
    dbPath = "$dbPath/$dbname";
    Database db = await openDatabase(dbPath, version: 1, onCreate: _createDB);
    return db;
  }

  _createDB(Database db, int version) {
    String query = '''
  create table teacher(
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  age INTEGER, 
  contact TEXT,
  picture TEXT
)''';
    db.execute(query);
  }

  Future<int> insertTeacher(Teacher tch) async {
    Database db = await database;
//First One
//   String query=
//   '''
// insert into student values(name,age,contact)
// (
//   '${tch.name}',
//   '${tch.age}',
//   '${tch.contact}'
// )
// ''';
// int rowNumber=await db.rawInsert(query);
// return rowNumber;
//Second Two
    int row = await db.insert('teacher', tch.toMap());
    return row;
  }

  Future<List<Teacher>> getAllTeachers() async {
    Database db = await database;
    var rows = await db.query('teacher');
    List<Teacher> tlist = [];
    for (int i = 0; i < rows.length; i++) {
      Map<String, dynamic> row = rows[i];
      Teacher t = Teacher.fromMap(row);
      tlist.add(t);
    }
    return tlist;
  }

  Future<int> deleteTeacher(int id) async {
    Database db = await database;
    //First Way
    // String q='Delete from teacher where ID=$id';
    //  db.rawDelete(q);
    int row = await db.delete('teacher', where: 'ID=?', whereArgs: [id]);
    return row;
  }
}
