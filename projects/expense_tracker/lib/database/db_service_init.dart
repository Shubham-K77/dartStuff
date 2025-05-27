//Imports
import 'package:expense_tracker/database/finance_db.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

//Class with db functions
class database_service {
  Database? _db; //From package sqflite

  //Getter to get the instance of database
  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await _init();
    return _db;
  }

  //Getter to get the database path
  Future<String> get db_path async {
    const name = 'mudra_app.db';
    final path = await getDatabasesPath();
    return join(path, name);
  }

  //Init method to create the database
  Future<Database?> _init() async {
    final path = await db_path;
    var db = await openDatabase(
      path,
      version: 1,
      onCreate: create,
      singleInstance: true,
    );
    return db;
  }

  //Create call-back function that creates a new table if the database is created for the first time.
  Future<void> create(Database db, int version) async =>
      await financeDB().createTable(db);
  
}
