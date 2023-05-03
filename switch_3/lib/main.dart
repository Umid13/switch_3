import 'package:flutter/material.dart';
import 'package:switch_3/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Scaffold(appBar:AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.blueAccent,
          size: 25,
        ),
        backgroundColor: Colors.white,
        title: const Text('Notifications',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),),
        actions: [
          Row(
            children: [
              const Icon(
                Icons.search,
                size: 25,
                color: Colors.blueAccent,
              ),
              Container(
                width: 30,
              ),
            const  Padding(
                padding: EdgeInsets.only(right: 15),
                child:  Icon(
                  Icons.help_outline,
                  size: 25,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          )
        ],
      ),
      body: const switch_3(),
      ),
    )
  );
}


 