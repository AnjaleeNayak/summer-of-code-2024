// ignore_for_file: must_be_immutable, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, implementation_imports, unused_import, body_might_complete_normally_nullable, prefer_interpolation_to_compose_strings, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter/animation.dart';
import 'package:badges/src/badge.dart';
import 'package:badges/badges.dart' as badges;

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<String> productName =['mango','orange'];
  List<String> productUnit =['KG','dozen'];
  List<String> productPrice =['10','20'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventory'),
        centerTitle: true,
        actions: [
          Center(
          child:badges.Badge(
            badgeContent: Text('0',style: TextStyle(color: Colors.white)),
            animationDuration: Duration(milliseconds: 300),
            child:Icon(Icons.shopping_bag_outlined),
          ),
          ),
          SizedBox(width: 20.0)
        ],
      ),
      body: Column(children: [
        Expanded(child: ListView.builder(
          itemCount: productName.length,
          itemBuilder: (context, index){
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(index.toString(),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  Text(productUnit[index].toString() + " "+ "inr."+ productPrice[index].toString(),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                  SizedBox(height: 5,),
                  Align(
                    alignment: Alignment.centerRight,

                  child: Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child:Text('Add to cart',style: TextStyle(color: Colors.white),)
                     ),
                  )
                  )
                ],
              )
                )
            ],)

          );
        }))
      ],),
    );
  }
}