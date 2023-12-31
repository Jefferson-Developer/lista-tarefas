import 'package:flutter/material.dart';
import 'package:provider/single_child_widget.dart';
import 'package:todo_list_provider/core/modules/todo_list_page.dart';

abstract class TodoListModule {
  final Map<String, WidgetBuilder> _routers;
  final List<SingleChildWidget>? _bidings;

  TodoListModule(
      {List<SingleChildWidget>? bidings,
      required Map<String, WidgetBuilder> routers})
      : _bidings = bidings,
        _routers = routers;

  Map<String, WidgetBuilder> get routers {
    return _routers.map((key, pageBuilder) => MapEntry(
        key,
        (_) => TodoListPage(
              page: pageBuilder,
              bindings: _bidings,
            )));
  }
}
