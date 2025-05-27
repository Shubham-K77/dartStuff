//Import
import 'package:expense_tracker/database/db_Service_Init.dart';
import 'package:expense_tracker/model/finance_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:intl/intl.dart';

//Creating Class
class financeDB {
  final tableName = 'financeTable';
  //Method to create the db table
  Future<void> createTable(Database db) async {
    await db.execute(
      "CREATE TABLE IF NOT EXISTS $tableName (id INTEGER PRIMARY KEY AUTOINCREMENT, title VARCHAR(50) NOT NULL, desc TEXT NOT NULL, createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP, amount DOUBLE NOT NULL, type VARCHAR(10) NOT NULL)",
    );
  }

  //Method to insert the data into the db
  Future<int> create({
    required String title,
    required String desc,
    required DateTime createdAt,
    required double amount,
    required String type,
  }) async {
    final db = await database_service().db;
    final createdAtString = createdAt.toIso8601String();
    return await db!.rawInsert(
      "INSERT INTO $tableName (title, desc, createdAt, amount, type) VALUES (?, ?, ?, ?, ?)",
      [title, desc, createdAtString, amount, type],
    );
  }

  //Method to fetch all the information from the table
  Future<List<Finance>> fetchAll() async {
    final db = await database_service().db;
    final finances = await db!.rawQuery(
      "SELECT * FROM $tableName ORDER BY (createdAt) ASC",
    );
    return finances.map((finance) => Finance.fromMap(finance)).toList();
  }

  //Method to fetch the finance of a specific day
  Future<List<Finance>> fetchByDate(DateTime date) async {
    final db = await database_service().db;
    final formattedDate = DateFormat('yyyy-MM-dd').format(date);
    final finances = await db!.rawQuery(
      "SELECT * FROM $tableName WHERE DATE(createdAt) = ? ORDER BY createdAt Asc",
      [formattedDate],
    );
    return finances.map((finance) => Finance.fromMap(finance)).toList();
  }

  //Updating the existing finance for a specific value
  Future<int> updatedFinance({
    required int id,
    required String type,
    required double amount,
  }) async {
    final db = await database_service().db;
    return await db!.rawUpdate(
      "UPDATE $tableName SET amount = ?, type = ? WHERE id = ?",
      [amount, type, id],
    );
  }

  //Delete the existing finance for a specific value
  Future<void> deleteFinance({required int id}) async {
    final db = await database_service().db;
    await db!.rawDelete("DELETE FROM $tableName WHERE id = ?", [id]);
  }
}
