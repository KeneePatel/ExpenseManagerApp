import 'init_db.dart';

class DbMigrator {
  static final Map<int, String> migrations = {
    1: initDbScript,
  };
}