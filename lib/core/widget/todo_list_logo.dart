import 'package:flutter/material.dart';
import 'package:todo_list_provider/core/ui/theme_extensions.dart';

class TodoListLogo extends StatefulWidget {

  const TodoListLogo({ super.key });

  @override
  State<TodoListLogo> createState() => _TodoListLogoState();
}

class _TodoListLogoState extends State<TodoListLogo> {

   @override
   Widget build(BuildContext context) {
       return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/logo.png", height: 200,),
          Text("Todo List", style: context.textTheme.titleLarge)
        ],
       );
  }
}