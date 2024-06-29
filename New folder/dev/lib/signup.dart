// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        //brightness: Brightness.light,
        backgroundColor: Color.fromARGB(255, 1, 39, 70),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,),


        ),
      ),
      body: SafeArea(
        child: Container(
           color: Color.fromARGB(255, 1, 39, 70),
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Create Account Now!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,

                  ),),
                 

                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(label: "Username"),
                  inputFile(label: "Email"),
                  inputFile(label: "Password", obscureText: true),
                  inputFile(label: "Phone No ", obscureText: true),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration:
                BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),



                    )

                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {},
                  color: Color.fromARGB(234, 234, 234, 175),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),

                  ),
                  child: Text(
                    "Sign up", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.black,

                  ),
                  ),

                ),



              ),


            ],

          ),


        ),

      ),

    );
  }
}

Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
        ),

      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 0,
                horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey
              ),

            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
            )
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}