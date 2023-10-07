// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
      ),
      body: SingleChildScrollView(
          child: 
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.account_circle, size:130, color: Colors.black,),
                        Text('@andrew', style: TextStyle(fontSize: 20),),
                        Text('from San Francisco', style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                ),
              ),
          ),
    );
  }
}
