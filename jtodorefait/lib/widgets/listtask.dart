import 'package:flutter/material.dart';
import 'package:jtodorefait/models/taskrefait.dart';
import 'package:jtodorefait/widgets/titretask.dart';


class TaskList extends StatefulWidget {
  final List<Task>tasks;
  TaskList(this.tasks);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            title: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback:(checkState){
              setState(() {
                widget.tasks[index].toggleTask();
              });
            }
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
