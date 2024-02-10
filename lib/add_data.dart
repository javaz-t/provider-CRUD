import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_todo/provider.dart';

class AddData extends StatelessWidget {
  const AddData({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    var addTodo = Provider.of<TodoProvider>(context);
    return Consumer<TodoProvider>(
      builder: (context, addingNewValue, child) =>
       FloatingActionButton(onPressed: (){
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    hintText: 'add task',
                  ),
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                    String  title= titleController.text;
                      addTodo.add(title);
                    titleController.clear();
                      Navigator.pop(context);
                    },
                    child: Text('SAVE'),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel')
                  )
                ],
              );
            }
        );
      },
          child: Text('Add ')
      ),
    );


  }
}
