import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goodgo/model/todos/cl_todos.dart';

import 'api_service_providers.dart';

final TodosProvider = FutureProvider<List<Todos>>((ref) async {
  return ref.watch(ApiServicesProvider).getTodos();
});
