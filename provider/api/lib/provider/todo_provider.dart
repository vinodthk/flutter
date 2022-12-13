import 'package:api/api/todo_api.dart';
//import 'package:api/model/todo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoProvider extends ChangeNotifier {
  final _api = TodoApi();
  bool isLoading = false;

  dynamic shop_list;

  Future<void> getAllTodos() async {
    isLoading = true;
    notifyListeners();
    final response = await _api.getAll();
    shop_list = response;
    isLoading = false;

    notifyListeners();
  }
}
