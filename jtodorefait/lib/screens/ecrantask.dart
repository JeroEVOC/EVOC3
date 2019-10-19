import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:jtodorefait/models/taskrefait.dart';
import 'package:jtodorefait/screens/ajouttask.dart';
import 'package:jtodorefait/widgets/listtask.dart';

final TextEditingController controller = new TextEditingController();



class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  List<Task> tasks = [
    Task(name: 'Call Dad'),
    Task(name: 'Buy pencil'),
    Task(name: 'Clean House'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blueGrey,

      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding (
          padding: const EdgeInsets.all(8.0),
          child: Column (

            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[

              FloatingActionButton (
                onPressed: () {
        showModalBottomSheet(
        context: context, builder: (context) => AddTaskScreen((newTask){
        setState(() {
        tasks.add(Task(name: newTask));
        });
          Navigator.pop(context);
        }));
        },
                backgroundColor: Colors.blueGrey,
           child: Icon(Icons.add,color: Colors.brown),
              ),
              FloatingActionButton(
                onPressed: () {
                  print("numero tache");
                  controller : controller;

                  tasks.clear();

                },
                backgroundColor: Colors.blueGrey,
                child: Icon(Icons.delete_forever,color: Colors.brown),
              )
            ],
          ),
        ),


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[

                CircleAvatar(
                  child: Icon(
                    Icons.playlist_add_check,
                    size: 30,
                    color: Colors.brown,

                  ),

                  backgroundColor: Colors.white30,
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Bienvenue dans votre Mini-Agenda!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                   fontFamily:'Times New Roman',
                  ),
                ),
                Text(
                  '${tasks.length} Tâches listées',
                  style: TextStyle(
                      color: Colors.white,
                    fontFamily:'Raleway',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),

              child: TaskList(tasks),
            ),
          )
        ],
      ),
    );
  }
}
