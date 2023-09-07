
import 'package:flutter/material.dart';
import 'package:todo_list_provider/core/database/sqlite_connection_factory.dart';

class SqliteAdmConnection with WidgetsBindingObserver{
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final connection = SqliteConnectionFactory();
    switch(state){
        case AppLifecycleState.resumed :
        break;
        case AppLifecycleState.inactive :
        case AppLifecycleState.paused :
        case AppLifecycleState.detached :
          connection.closeConnection();
          break;
    }
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
  }
}