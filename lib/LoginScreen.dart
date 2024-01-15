import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "loginScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            color: Color(0xFFDFECDB), // Adjust opacity as needed
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30,bottom: 50),
                child: Text("Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),)),
              SizedBox(height: 20,),
              Text(
                "Welcome Back",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
