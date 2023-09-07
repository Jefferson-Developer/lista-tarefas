
import 'package:todo_list_provider/core/database/migrations/migration.dart';
import 'package:todo_list_provider/core/database/migrations/migration_v1.dart';

class SqfliteMigrationFactory {
  List<Migration> getCreateMigration() => [
    MigrationV1(),
  ];
  List<Migration> getUpgradeMigration(int version){
    final migrations = <Migration>[];
    ///Caso abaixo exemplifica caso a nova versão for 3
    if(version == 1){
      ///Será chamado a nova migration, no caso a V2 e V3
      /// ou seja, deverá passar pelo update v2 e v3
      /// migrations.add(MigrationV2)
      /// migrations.add(MigrationV3)
    }
    if(version == 2){
      ///migrations.add(MigrationV3)
    }
    return migrations;
  }
}