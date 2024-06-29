// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
     bool rememberMe = false;

    return Scaffold(
      
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        //brightness: Brightness.light,
        backgroundColor:Color.fromARGB(255, 1, 39, 70) ,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
          size: 20,
          color: Color.fromARGB(255, 255, 255, 255),),


        ),
      ),
      body:SafeArea(
       child:Container(
        color: Color.fromARGB(255, 1, 39, 70),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    
                    Text("Welcome Back!",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color:Colors.white),),
                    SizedBox(height: 10,),
                    Text("Login to continue",
                    style: TextStyle(
                      fontSize: 15,
                    color:Colors.white),)
                  ],
                ),
                SizedBox(
        height: 3,
      ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget>[
                      inputFile(label: "Email"),
                      inputFile(label: "Password", obscureText: true)
                    ],
                  ),
                ),
                Column(
                  
                children: <Widget>[

                  Text(
                    "                          Forgot Password?",
                    textAlign: TextAlign.end,
                    
                    style: TextStyle(
                    
                      fontSize: 16,
                      color: Colors.white,

                    ),
                    
                  ),
                  
                ],
              ),
                Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                     Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                    Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              checkColor: Colors.green,
              activeColor: Colors.white,
              value: rememberMe,
                                onChanged: (bool? value) {
                                  setState(() {
                                    rememberMe = value!;
                                  });
                                },
                                
                              ),
            ),
          
      Text(
            'Remember me',
            style: TextStyle(
                    
                      fontSize: 16,
                      color: Colors.white,

                    ),
          ),
      
         
      
              ]
                     ),
                  ]
                  ),
                  Padding(padding:
                  EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
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
                          "Login", style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                          color: Colors.black,

                        ),
                        ),

                      ),
                    ),
                  ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?",style: TextStyle(
                    color: Colors.white,
                    ),),
                    Text(" Sign up", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color:  Color.fromARGB(234, 234, 234, 175),

                    ),)
                  ],
                ),

                

              ],
            ))
          ],
        ),
      ),
      )
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
          color: Colors.white
        ),

      ),
      SizedBox(
        height: 10,
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
              color: Colors.white

            ),
            

          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          )
           
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}



