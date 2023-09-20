import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/model/comment.dart';
import 'package:project/model/news.dart';
import 'package:project/news_description.dart';
import 'package:project/news_main_page.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'НОВОСТИ',
      theme: ThemeData(
      
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
        primarySwatch: Colors.red,
      ),
      home: const NewsMainPage(title: 'Новости'),
    );
  }
}

