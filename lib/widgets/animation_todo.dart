import 'package:flutter/material.dart';
import 'package:todo_app/widgets/todo_widget.dart';

import 'detailed/work_model.dart';

class TodoWidget extends StatefulWidget {
  var todo;
  TodoWidget(this.todo);


  @override
  State<TodoWidget> createState() => _TodoWidgetState();
}

class _TodoWidgetState extends State<TodoWidget> {
  bool isExpanded = false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 400,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Stack(
          children: [
            Container(
            height: 400,
              width: 400,
             child: Todocard(widget.todo))]
        ),
      ),
    );

  }

  void onPanUpdate(DragUpdateDetails details) {
    if (details.delta.dy < 0) {
      setState(() {
        isExpanded = true;
      });
    }else if (details.delta.dy > 0){
      setState(() {
        isExpanded = false;
      });
    }
  }
}