import 'package:flutter/material.dart';
import 'package:primeiro_projeto/components/task.dart';

//manipulador de informacoes

class TaskInherited extends InheritedWidget {
   TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);


  final List<Task> taskList = [
    Task('Carro','assets/images/carro.webp',2,),
    Task('Bicicleta','assets/images/bike.jpg',3,),
    Task('Moto','assets/images/moto.jpg',4,),
    Task('Barco','assets/images/barco.webp',1,),
    Task('Avião','assets/images/aviao.webp',5,),
  ];//so aceita valores da classe Task

  void newTask(String name, String photo, int difficulty){
    taskList.add(Task(name, photo, difficulty));

}

  static TaskInherited of(BuildContext context) {
    final TaskInherited ? result = context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No  found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
