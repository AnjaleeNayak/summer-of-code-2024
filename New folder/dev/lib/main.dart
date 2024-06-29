// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unused_import, unnecessary_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:firstapp/login.dart';
import 'package:firstapp/signup.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: Container(
          color: Color.fromARGB(255, 1, 39, 70),
          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen

          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "DSOC",
                     
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                      
                      

                    ),
                    
                  ),
                  Icon(
                    Icons.menu,
                    size: 50,
                    color: Colors.white,
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
              
                  image: DecorationImage(
                    image: AssetImage("lib/images/image1.jpg")
                  )
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "Hello,Welcome!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,

                    ),
                    
                  ),
                  
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "welcome to DSOC 2024",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white,
                      

                    ),
                    
                  ),
                  
                ],
              ),
              Column(
                children: <Widget>[
                  // the login button
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));

                    },
                    // defining the shape
                    color: Color.fromARGB(234, 234, 234, 175),
                    shape: RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 18
                      ),
                    ),
                  ),
                  // creating the signup button
                  SizedBox(height:20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupPage()));

                    },
                    color: Color.fromARGB(234, 234, 234, 175),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 8, 0, 0),
                        fontWeight: FontWeight.w800,
                        fontSize: 18
                      ),
                    ),
                  )

                ],
              ),
              const SizedBox(height: 10),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or via social media',
                        style: TextStyle(color: const Color.fromARGB(255, 249, 249, 249)),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
               Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tab(icon: Image.asset("lib/images/facebook.png")),
              Tab(icon: Image.asset("lib/images/twitter.png")),
              //Tab(icon: Image.asset("lib/images/linkedin.png")),
            ],
          )



            ],
          ),
        ),
      ),
    );
  }
}