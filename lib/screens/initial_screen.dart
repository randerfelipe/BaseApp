import 'package:flutter/material.dart';
import 'package:primeiro_projeto/components/task.dart';
import 'package:primeiro_projeto/data/task_inherited.dart';
import 'package:primeiro_projeto/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text('Tarefas'),
        ),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: TaskInherited.of(context).taskList,
        padding: EdgeInsets.only(top: 8, bottom: 70),
      ),
      floatingActionButton: FloatingActionButton(
          //Botao que esconde e mostra
          onPressed: () {
            Navigator.push(
              //cria rota para navegar entre telas
              context,
              MaterialPageRoute(
                builder: (contextNew) => FormScreen(taskContext: context,),
              ),
            );
          },
          child: const Icon(
            Icons.add,
            size: 20,
          )),
    );
  }
}
