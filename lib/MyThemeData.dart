import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryLight = Color(0xff5D9CEC);
  static Color backgroundLight = Color(0xffDFECDB);
  static Color greenLight = Color(0xff61E757);


  static ThemeData lightMode = ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue), // Set the desired default underline color
        ),
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: primaryLight,
          primary: primaryLight,
          onPrimary: Colors.black,
          secondary: Colors.white,
          onSecondary: Colors.black,
          outline: Colors.blue,
          background: backgroundLight),
    scaffoldBackgroundColor: backgroundLight,
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(fontSize: 28, color: Colors.white),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
          fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600),
      titleMedium: TextStyle(
          fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600),
      titleSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: Colors.white
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primaryLight,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.transparent,
      elevation: 0,

    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),

        )
      )
    ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blue
      )
  );
  static ThemeData darkMode = ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue), // Set the desired default underline color
        ),
      ),
      colorScheme: ColorScheme.fromSeed(
        secondary: Color(0xff1c1c1c),
          onPrimary: Colors.white,
          seedColor: primaryLight,
          primary: primaryLight,
          outline: Colors.blue,
          background: backgroundLight),
      primaryColor: primaryLight,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(fontSize: 28, color: Colors.black),
      ),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(
            fontSize: 22, color: Colors.white, fontWeight: FontWeight.w600),
        titleMedium: TextStyle(
            fontSize: 22, color: Colors.white, fontWeight: FontWeight.w600),
        titleSmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
      bottomAppBarTheme: BottomAppBarTheme(
          color: Color(0xff2f2f2f)
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: primaryLight,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.transparent,
        elevation: 0,

      ),
      bottomSheetTheme: BottomSheetThemeData(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),

              )
          )
      ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.blue
    )
  );
}
