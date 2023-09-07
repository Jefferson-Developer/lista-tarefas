import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_provider/app_widget.dart';
import 'package:todo_list_provider/core/database/sqlite_adm_connection.dart';
import 'package:todo_list_provider/core/database/sqlite_connection_factory.dart';
class AppModulo extends StatefulWidget {
  const AppModulo({super.key});

  @override
  State<AppModulo> createState() => _AppModuloState();
}

class _AppModuloState extends State<AppModulo> {
  final sqliteAdmConnection = SqliteAdmConnection();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(sqliteAdmConnection);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    WidgetsBinding.instance.removeObserver(sqliteAdmConnection);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => SqliteConnectionFactory(), lazy: false,)
      ],
      child: AppWidget(),
    );
  }
}