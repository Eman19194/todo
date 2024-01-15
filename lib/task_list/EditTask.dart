import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditTask extends StatefulWidget {
  static const String routeName="EditScreen";

  @override
  State<EditTask> createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {
  final formKey = GlobalKey<FormState>();
  DateTime selcetedDate=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do List"),
      ),
      body: Center(
        child: Card(
          color:Theme.of(context).colorScheme.secondary,
          elevation: 10,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
        child: SizedBox(
        width: 350,
        height: 600,
        child: Container(
          padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 20),
              child: Text("Edit Task",style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Task Title",
                hintStyle: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },

            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Task description",
                hintStyle: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              maxLines: 4,


            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Select Time",style: Theme.of(context).textTheme.titleMedium,),
            ),
            InkWell(
              onTap: (){
                showCalender();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("$selcetedDate",style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Save Changes'),
              ),
            ),
          ],
        )),
        ),
    ),
    ),
    );
  }

  void showCalender()async {
    var selectedTime=  await showDatePicker(context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),);
    if(selectedTime !=null){
      selcetedDate = selectedTime;
    }
    setState(() {

    });
  }
}
