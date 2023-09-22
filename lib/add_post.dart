import 'package:flutter/material.dart';

class AddPost extends StatelessWidget {
  const AddPost({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add post'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          //Image add button here
          
          //News name input box
          //News body input box
          //Submit button
        ],
      )),
    );
  }
}
