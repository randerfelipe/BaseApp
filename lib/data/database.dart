import 'package:primeiro_projeto/data/task_dao.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart'; //necessario para usar o future

Future<Database> getDatabase() async {
  //assincrono para nao ficar esperando retorno imediato
  final String path = join(await getDatabasesPath(), 'task.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(TaskDao.tableSql);
    },
    version: 1,
  );
} //Future é usado pra puxar dados do banco futuramente


