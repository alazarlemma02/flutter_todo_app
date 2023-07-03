import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'package:todo_app/data/model/todo.dart';
import 'package:todo_app/view/widget/text_box.dart';

class TaskScreen extends StatefulWidget {
  final TextEditingController contName;
  const TaskScreen({super.key, required this.contName});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  void _addTask(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
              padding: EdgeInsets.all(MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.height * 0.01),
                    child: const Text('Add Task'),
                  ),
                  TaskAddingTextField(
                    contName: widget.contName,
                    lableName: 'Title',
                    maximumLine: 1,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  TaskAddingTextField(
                    maximumLine: 3,
                    contName: widget.contName,
                    lableName: 'description',
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 219, 217, 112),
                    blurRadius: 2,
                    spreadRadius: 2,
                    blurStyle: BlurStyle.solid),
              ]),
              margin: const EdgeInsets.all(5.0),
              child: ListTile(
                tileColor: Colors.black,
                title: Text(''),
                subtitle: Text(''),
                hoverColor: Colors.blue,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Center(
            child: Icon(
          Icons.add,
          color: Colors.white,
        )),
        onPressed: () {
          _addTask(context);
        },
      ),
    );
  }
}
