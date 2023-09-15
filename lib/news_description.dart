import 'package:flutter/material.dart';
import 'package:project/model/news.dart';

class NewsDescription extends StatelessWidget {
  const NewsDescription({super.key, required this.news});
  final News news;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(news.name),
      ),
      body: Center(child: Column(children: [
        news.imageUrl.isEmpty?Container(height: 200, color: Colors.amber,):Image.network(news.imageUrl),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('${news.body}'),
        ),
      ],)),
    );
  }
}
