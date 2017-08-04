import 'package:angel/angel.dart';
import 'package:angel_migration_runner/angel_migration_runner.dart';
import 'package:angel_migration_runner/postgres.dart';
import 'package:angel_orm/angel_orm.dart';
import 'migrations/user.dart';

main(List<String> args) async {
  // Get the application's connection pool, so that we can use the credentials
  // from our application configuration.
  var app = await createServer();
  var connectionPool =
      app.container.make(PostgreSQLConnectionPool) as PostgreSQLConnectionPool;

  // Initialize a PostgreSQL migration runner, which will compile our
  // migrations into SQL queries.
  var migrationRunner = new PostgresMigrationRunner(
    await connectionPool.connector(),
    migrations: [
      new UserMigration(),
    ],
  );

  // Run a `up`, `rollback`, `reset`, or `refresh` command...
  await runMigrations(migrationRunner, args);
}
