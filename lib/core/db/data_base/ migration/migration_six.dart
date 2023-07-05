import 'package:sqflite/sqflite.dart';
import 'package:whatsappsendnumber/core/db/data_base/tables.dart';

class MigrationSix {
  final Database db;

  MigrationSix(this.db) {
    onMigration();
  }

  Future<void> onMigration() async {
    await db.execute('DROP FROM $numberPhoneTable');
    await db.execute('DROP FROM $countryTable');
    await db.execute('DROP FROM $messageShortTable');
  }
}
