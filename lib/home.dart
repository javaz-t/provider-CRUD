import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_todo/add_data.dart';
import 'package:provider_todo/provider.dart';
import 'package:provider_todo/update_data.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    final  addTodo = Provider.of<TodoProvider>(context);
    return   Scaffold(
        floatingActionButton:AddData(),
        appBar: AppBar(
          title: Text('Todo List ye9 '),
          backgroundColor: Colors.greenAccent,
        ),
        body: Consumer<TodoProvider>(
            builder: (context, addingNewValue, child) =>
             ListView.builder(
              itemCount: addTodo.todo.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(addTodo.todo[index]),
                    leading:  UpdateData(index: index,),
                    trailing: IconButton(icon: const Icon(Icons.delete),onPressed: (){
                       addTodo.delete(index);
                     titleController.clear();
                    },),
                  ),
                );
              }),
        ),
      );

  }
}
