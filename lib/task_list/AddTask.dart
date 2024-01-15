import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final formKey = GlobalKey<FormState>();
  DateTime selcetedDate=DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
        border: Border.all(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Text(("add New Task"),style: Theme.of(context).textTheme.titleMedium,),
          Form(
            key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "enter Your Task",
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
                  hintText: "enter Your description",
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
                  child: Text("$selcetedDate",style: Theme.of(context).textTheme.titleSmall,textAlign: TextAlign.center,),
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
                  child: const Text('Add'),
                ),
              ),
            ],
          ))
        ],
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
