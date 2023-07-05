import 'package:sqflite/sqflite.dart';
import 'package:whatsappsendnumber/core/db/data_base/tables.dart';

class Migration7 {
  final Database db;

  Migration7(this.db) {
    onMigration();
  }

  Future<void> onMigration() async {
    await db.execute('DROP TABLE IF EXISTS $numberPhoneTable');
  }
}
