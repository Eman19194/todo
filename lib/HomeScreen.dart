import 'package:flutter/material.dart';
import 'package:todo/task_list/AddTask.dart';
import 'package:todo/settings/SettingesTab.dart';
import 'package:todo/task_list/TaskListTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  List<Widget> tabs=[TaskListTab(),SettingesTab()];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap:(index){
            selectedIndex=index;
            setState(() {

            });
          } ,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list),label: "List"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),

        ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.white,
            width: 6,
          )
        ),
        onPressed: () {
          showBottomSheet();
        },
        child: Icon(Icons.add,size: 30,color: Colors.white,),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: tabs[selectedIndex],
    );
  }
  void showBottomSheet(){
    showModalBottomSheet(context: context,
        builder: (context)=>AddTask(),);
  }
}
