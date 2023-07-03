import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskAddingTextField extends StatefulWidget {
  final TextEditingController contName;
  final String lableName;
  final int maximumLine;
  const TaskAddingTextField(
      {super.key,
      required this.contName,
      required this.lableName,
      required this.maximumLine});

  @override
  State<TaskAddingTextField> createState() => _TextBottomFieldState();
}

class _TextBottomFieldState extends State<TaskAddingTextField> {
  TextEditingController textCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    textCont = widget.contName;
    return TextField(
      maxLines: widget.maximumLine,
      controller: textCont,
      decoration: InputDecoration(
          label: Text(widget.lableName.toString()),
          border: const OutlineInputBorder()),
    );
  }
}
