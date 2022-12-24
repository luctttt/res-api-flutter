import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:request_api/model/users.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DBHelper {
  static Database? _db;
  static const String TABLE = 'user';
  static const String DB_NAME = 'user.db';

  static const String POST_ID = 'id';
  static const String ID = 'id';
  static const String Name = 'name';
  static const String EMAIL = 'email';
  static const String BODY = 'body';

  Future<Database?> get db async {
    if (_db != null) {
      return db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "TestDB.db");
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE $TABLE ("
          "$POST_ID INTEGER PRIMARY KEY,"
          "$ID INTEGER,"
          "$Name TEXT,"
          "$EMAIL TEXT,"
          "$BODY TEXT"
          ")");
    });
  }

  Future<User> insert(User user) async {
    var dbClient = await db;
    user.id = await dbClient!.insert(TABLE, user.toJson());
    return user;
    /*
    await dbClient.transaction((txn) async {
      var query = "INSERT INTO $TABLE ($NAME) VALUES ('" + employee.name + "')";
      return await txn.rawInsert(query);
    });
    */
  }

  Future<List<User>> getUser() async {
    var dbClient = await db;
    List<Map<String, dynamic>> map =
        await dbClient!.query(TABLE, columns: [POST_ID, ID, Name, EMAIL, BODY]);
    List<User> users = [];
    if (map.isNotEmpty) {
      for (int i = 0; i < map.length; i++) {
        users.add(User.fromJson(map[i]));
      }
    }
    return users;
  }

  Future<int> delete(int id) async {
    var dbClient = await db;
    return await dbClient!.delete(TABLE, where: '$ID = ?', whereArgs: [id]);
  }

  // Future<int> insert(int id) async {
  //   var dbClient = await db;
  //   return await dbClient!.insert(TABLE, where: '$ID = ?', whereArgs: [id]);
  // }

  Future<int> update(User user) async {
    var dbClient = await db;
    return await dbClient!
        .update(TABLE, user.toJson(), where: '$ID = ?', whereArgs: [user.id]);
  }

  Future<void> close() async {
    var dbClient = await db;
    return await dbClient!.close();
  }
}
