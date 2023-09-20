import 'package:flutter/material.dart';
import 'package:project/model/comment.dart';
import 'package:project/model/news.dart';

class NewsDescription extends StatelessWidget {
  const NewsDescription({super.key, required this.news});
  final News news;

  List<Widget> _buildCommentsList(List<Comment> comments) {
    List<Widget> _commentsWidgetsList = [];

    comments.forEach((element) {
      _commentsWidgetsList.add(Card(
        child: ListTile(
          leading: CircleAvatar(),
          title: Text(element.username),
          subtitle: Text(element.body),
        ),
      ));
    });
    // _commentsWidgetsList.add();
    return _commentsWidgetsList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Text(news.name),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    news.imageUrl.isEmpty
                        ? Container(
                            height: 200,
                            color: Colors.amber,
                          )
                        : Image.network(news.imageUrl),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('${news.body}'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          Icon(
                            Icons.comment,
                            color: Colors.blueGrey,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 182, 171, 171),
                      width: double.infinity,
                      height: 1,
                    ),
                    ..._buildCommentsList(news.comments)
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 5,right:5,bottom: 5),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Комментарий'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CircleAvatar(child: Icon(Icons.send)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
