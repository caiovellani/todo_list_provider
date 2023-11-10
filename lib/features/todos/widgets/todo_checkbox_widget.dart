import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_provider/features/todos/controllers/todos_controller.dart';
import 'package:todo_list_provider/shared/models/todo_model.dart';

class TodoCheckBoxWidget extends StatelessWidget {
  final TodoModel todo;

  const TodoCheckBoxWidget(this.todo, {super.key});

  @override
  Widget build(BuildContext context) {
    final todosCtrl = context.watch<TodosController>();

    return Checkbox(
      value: todosCtrl.isTodoChecked(todo.id),
      onChanged: (bool? isDone) => todosCtrl.checkTodo(todo.id),
    );
  }
}
