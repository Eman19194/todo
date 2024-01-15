import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/HomeScreen.dart';
import 'package:todo/LoginScreen.dart';
import 'package:todo/MyThemeData.dart';
import 'package:todo/providers/SettingsProvider.dart';
import 'package:todo/task_list/EditTask.dart';
import 'SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main()  {
  runApp(ChangeNotifierProvider(
      create: (buildContext) => SettingsProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(

      theme: MyThemeData.lightMode,
      darkTheme: MyThemeData.darkMode,
      themeMode: settingsProvider.currentTheme,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        EditTask.routeName: (context) => EditTask(),
      },

      initialRoute: SplashScreen.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
