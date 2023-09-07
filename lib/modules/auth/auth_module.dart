import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_provider/core/modules/todo_list_module.dart';
import 'package:todo_list_provider/modules/auth/login/login_controller.dart';
import 'package:todo_list_provider/modules/auth/login/login_page.dart';

class AuthModule extends TodoListModule {
  AuthModule()
      : super(
            bidings: [ChangeNotifierProvider(create: (_) => LoginController())],
            routers: {"/login": (context) => LoginPage()});
}
