import 'package:flutter/material.dart';
import 'package:todo_list_provider/core/ui/todo_list_ui_config.dart';
import 'package:todo_list_provider/modules/auth/auth_module.dart';
import 'package:todo_list_provider/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {

  const AppWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return MaterialApp(
        theme: TodoListUiConfig.theme,
        title: "Todo List Provider",
        initialRoute: "/login",
        routes: {
          ...AuthModule().routers
        },
        home: SplashPage(),
       );
  }
}