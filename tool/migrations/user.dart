import 'package:angel_migration/angel_migration.dart';

class UserMigration extends Migration {
  @override
  void up(Schema schema) {
    schema.create('users', (table) {
      table
        ..serial('id').primaryKey()
        ..varchar('username')
        ..varchar('email')
        ..varchar('password')
        ..varchar('salt').unique()
        ..date('created_at')
        ..date('updated_at');
    });
  }

  @override
  void down(Schema schema) {
    schema.drop('users');
  }
}
