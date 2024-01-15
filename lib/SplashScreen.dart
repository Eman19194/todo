import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/HomeScreen.dart';
import 'package:todo/providers/SettingsProvider.dart';
import 'LoginScreen.dart';


class SplashScreen extends StatefulWidget {
  static const String routeName="splashScreen";

  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:1),
            ()=>Navigator.of(context).pushNamed(HomeScreen.routeName),
    );
  }
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
        decoration: BoxDecoration(
         image:DecorationImage(
           image: AssetImage(settingsProvider.getSplash()),
           fit: BoxFit.fill,
         ),

        ),
    );
  }
}