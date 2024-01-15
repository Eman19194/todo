import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'Task.dart';
class TaskListTab extends StatefulWidget {
  @override
  State<TaskListTab> createState() => _TaskListTabState();
}

class _TaskListTabState extends State<TaskListTab> {
  DateTime selcetedDate=DateTime.now();
  List<Task> tasks =[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do List"),
      ),
    body:Container(child: Column(
      children: [
        CalendarTimeline(
          initialDate: selcetedDate,
          firstDate: DateTime.now().subtract(Duration(days: 365)),
          lastDate: DateTime.now().add(Duration(days: 365)),
          onDateSelected: (date) => setState(() => selcetedDate = date),
          leftMargin: 20,
          monthColor: Theme.of(context).colorScheme.onPrimary,
          dayColor: Theme.of(context).colorScheme.onPrimary,
          dayNameColor: Colors.blue,
          activeDayColor: Colors.blue,
          activeBackgroundDayColor: Colors.white,
          dotsColor: Colors.blue,
          locale: 'en',
        ),
        Expanded(
          child: ListView.builder(
              itemBuilder: (context,index){
                return Task();
              },
            itemCount: 20,
          ),
        )

      ],
    ),),);
  }
}
