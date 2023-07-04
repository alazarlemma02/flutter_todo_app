import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskAddingTextField extends StatefulWidget {
  final Function(String) callBackFunction;
  final String? contName;
  final String? lableName;
  final int? maximumLine;
  const TaskAddingTextField(
      {super.key,
      required this.contName,
      required this.callBackFunction,
      required this.lableName,
      required this.maximumLine});

  @override
  State<TaskAddingTextField> createState() => _TextBottomFieldState();
}

class _TextBottomFieldState extends State<TaskAddingTextField> {
  final textCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        widget.callBackFunction(textCont.text);
      },
      maxLines: widget.maximumLine,
      controller: textCont,
      decoration: InputDecoration(
          label: Text(widget.lableName.toString()),
          border: const OutlineInputBorder()),
    );
  }
}
