import 'package:flutter/material.dart';



class TaskTile extends StatelessWidget{
  final bool isChecked ;
  final String title;
  final Function checkboxCallback;

  TaskTile({@required this.title,this.isChecked, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          '$title',
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.grey,
          value: isChecked,
          onChanged: checkboxCallback,
        )
    );
  }
}

