import 'package:flutter/material.dart';
import 'package:project/model/news.dart';

class NewsDescription extends StatelessWidget {
  const NewsDescription({super.key, required this.news});
  final News news;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text(news.name),
      ),
      body: Center(child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: news.imageUrl.isEmpty?Container(height: 200, color: Colors.amber,):Image.network(news.imageUrl),
        ),
        Row(
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('${news.body}'),
              )),
          ],
        ),
         const Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(30,5,30 ,0 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite , color: Colors.red,),
                    Icon(Icons.comment , color: Colors.blueGrey,),
                  ],
                ),
              )
            ],
          ),
      ],)
      ),
    );
  }
}
