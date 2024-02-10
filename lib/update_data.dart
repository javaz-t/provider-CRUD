
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_todo/provider.dart';


class UpdateData extends StatelessWidget {
  const UpdateData({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    var updateTodo = Provider.of<TodoProvider>(context);
    TextEditingController titleController = TextEditingController();
    titleController.text=updateTodo.todo[index];

    return Consumer<TodoProvider>(
      builder: (context, updateNewValue, child) =>
          IconButton(icon: Icon(Icons.edit),onPressed: (){
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        hintText: 'edit task',
                      ),
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          String updatval = titleController.text;
                         updateTodo.update(index, updatval);
                         titleController.clear();
                          Navigator.pop(context);
                        },
                        child: Text('Update'),
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

          ),
    );


  }
}

