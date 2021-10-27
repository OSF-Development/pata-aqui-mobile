import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  late Database _db;

  Future<Database> get db async {
    _db = await _init();
    return _db;
  }

  _init() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "ptaq.bd");

    var db = openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );

    return db;
  }

  FutureOr<void> _onCreate(Database db, int version) {
    this._createUsersTable(db);
    this._createPetsTable(db);
  }

  _createUsersTable(Database db) {
    String sql =
        'CREATE TABLE users (id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, name VARCHAR(200) NOT NULL, email VARCHAR(100) NOT NULL UNIQUE, password VARCHAR(100) NOT NULL);';
    db.execute(sql);
  }

  _createPetsTable(Database db) {
    String sql =
        'CREATE TABLE pets (id INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT, name VARCHAR(200) NOT NULL, race VARCHAR(100) NOT NULL, genre VARCHAR(100), age INTEGER NOT NULL, vaccinated VARCHAR(20));';
    db.execute(sql);
  }
}
