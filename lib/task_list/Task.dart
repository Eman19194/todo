import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo/MyThemeData.dart';

import 'EditTask.dart';

class Task extends StatefulWidget {
  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool isDone=false;
  late MyThemeData Mytheme;
  void IsDone() {
    setState(() {
      isDone = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(

      startActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(

            borderRadius: BorderRadius.circular(10),
            onPressed: (context) {},
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),

        ],
      ),
      child:InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(EditTask.routeName);
        },
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 62,
                width: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:  isDone ? MyThemeData.greenLight : Colors.blue,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Task title ",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color:isDone ? MyThemeData.greenLight : Colors.blue),
                    ),
                    Text(
                      "Desc ",
                      style: Theme.of(context).textTheme.titleSmall,
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  IsDone();
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: !isDone?Colors.blue:null,
                  ),
                  child:
                  isDone?Text(
                    "Done!",
                    style: Theme.of(context).textTheme.titleSmall ?.
                    copyWith(color:MyThemeData.greenLight),
                  ):Icon(
                    Icons.check,
                    color: Colors.white,
                  )
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
