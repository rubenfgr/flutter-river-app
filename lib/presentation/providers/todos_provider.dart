import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';
import 'package:river_app/domain/entities/todo.dart';
import 'package:uuid/uuid.dart';

final _uuid = Uuid();

final todosProvider = StateNotifierProvider<TodosNotifier, List<Todo>>((ref) {
  return TodosNotifier();
});

class TodosNotifier extends StateNotifier<List<Todo>> {
  TodosNotifier()
      : super([
          Todo(
              id: _uuid.v4(),
              description: RandomNamesGenerator.generateFullName(),
              completedAt: null),
          Todo(
              id: _uuid.v4(),
              description: RandomNamesGenerator.generateFullName(),
              completedAt: null),
          Todo(
              id: _uuid.v4(),
              description: RandomNamesGenerator.generateFullName(),
              completedAt: DateTime.now()),
          Todo(
              id: _uuid.v4(),
              description: RandomNamesGenerator.generateFullName(),
              completedAt: null),
        ]);

  void addTodo() {
    state = [
      ...state,
      Todo(
          id: _uuid.v4(),
          description: RandomNamesGenerator.generateFullName(),
          completedAt: null)
    ];
  }

  void toggleTodo(String id) {
    state = [
      for (final todo in state)
        if (todo.id == id)
          Todo(
              id: todo.id,
              description: todo.description,
              completedAt: todo.completedAt != null ? null : DateTime.now())
        else
          todo
    ];
  }
}
