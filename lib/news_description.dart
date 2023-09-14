import 'package:flutter/material.dart';
import 'package:project/model/news.dart';

class NewsDescription extends StatelessWidget {
  const NewsDescription({super.key, required this.news});
  final News news;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(news.name),),
    );
  }
}
