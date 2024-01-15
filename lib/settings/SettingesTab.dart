import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:provider/provider.dart';

import '../providers/SettingsProvider.dart';
class SettingesTab extends StatefulWidget {
  @override
  State<SettingesTab> createState() => _SettingesTabState();
}

class _SettingesTabState extends State<SettingesTab> {
  final List<String> mode = [
    'Light',
    'Dark',
  ];

  final List<String> lang = [
    'English',
    'Arabic',
  ];

  String? selectedMode;
  String? selectedLang;

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mode",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: DropdownButtonFormField2<String>(
                        isExpanded: true,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 16),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // Add more decoration..
                        ),
                        hint: Text(
                          settingsProvider.isDarkEnabled()
                              ? 'Dark'
                              : 'light',
                          style: TextStyle(color:Colors.blue,fontSize: 18),
                        ),
                        items: mode
                            .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style:TextStyle(color:Colors.blue,fontSize: 18)
                          ),
                        ))
                            .toList(),
                        onChanged: (value) {
                          value == 'Dark'?
                            settingsProvider.changeTheme(ThemeMode.dark):
                          settingsProvider.changeTheme(ThemeMode.light);

                        },
                        onSaved: (value) {
                          selectedMode = value.toString();
                        },
                        buttonStyleData: const ButtonStyleData(
                          padding: EdgeInsets.only(right: 8),
                        ),
                        iconStyleData: const IconStyleData(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.blue,
                          ),
                          iconSize: 24,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Language",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: DropdownButtonFormField2<String>(
                        isExpanded: true,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 16),focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // Add more decoration..
                        ),
                        hint:  Text(
                          settingsProvider.currentLocale == 'en'
                              ? 'English'
                              : 'العربيه',
                          style: TextStyle(color:Colors.blue,fontSize: 18),
                        ),
                        items: lang
                            .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: TextStyle(color:Colors.blue,fontSize: 18)
                          ),
                        ))
                            .toList(),
                        onChanged: (value) {
                        },
                        onSaved: (value) {
                          selectedLang = value.toString();
                        },
                        buttonStyleData: const ButtonStyleData(
                          padding: EdgeInsets.only(right: 8),
                        ),
                        iconStyleData: const IconStyleData(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.blue,
                          ),
                          iconSize: 24,
                        ),
                        dropdownStyleData: DropdownStyleData(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                    ),
                  ],
                ),
      ),
    );
  }
}
