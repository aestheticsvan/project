// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ElButton extends StatelessWidget {
  String title;
  IconData icon;
  IconData icon1;
  Function onPressed;
  ElButton(
      {super.key,
      required this.title,
      required this.icon,
      required this.icon1,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final style = ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            foregroundColor: MaterialStatePropertyAll(Colors.black),
            overlayColor: MaterialStatePropertyAll(Colors.grey),
            padding:  MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 10)),
            elevation: MaterialStatePropertyAll(1),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(250),)),
            shadowColor: MaterialStatePropertyAll(Colors.black));
      
    
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 40,
        width: 300,
        child: ElevatedButton(
            style: style,
            onPressed: () {
              onPressed();
            },
            child: Row(mainAxisSize: MainAxisSize.max,
              children: [SizedBox(width: 10,), Icon(icon, color: Colors.red,), SizedBox(width: 85,), Expanded(child: Text('$title')), Icon(icon1, color: Colors.red,)])),
      ),
    );
  }
}
