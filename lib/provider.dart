
import 'package:flutter/cupertino.dart';

class TodoProvider extends ChangeNotifier{
  List<String>todo =[];


  add(String title){
    todo.add(title);
    notifyListeners();
  }

  delete(int index){
    todo.removeAt(index);
    notifyListeners();
  }

update(int index,String updateValue){
    todo[index]=updateValue;
    notifyListeners();
}
}