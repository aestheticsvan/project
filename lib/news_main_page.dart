// ignore_for_file: prefer_const_constructors, prefer_final_fields, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:project/add_post.dart';
import 'package:project/model/comment.dart';
import 'package:project/model/news.dart';
import 'package:project/news_description.dart';
import 'package:project/user.dart';

enum PopupMenuEntries { BRIGHTNESSSWITCH, ADDNEWS, USERPROFILE }

class NewsMainPage extends StatefulWidget {
  const NewsMainPage({super.key, required this.title});
  final String title;

  @override
  State<NewsMainPage> createState() => _NewsMainPageState();
}

class _NewsMainPageState extends State<NewsMainPage> {
  @override
  List<News> _news = <News>[
    News(
        'Тодд Говард: "А мы Starfield выпустили"',
        'Студия Immortals of Aveum уволила почти половину сотрудников через несколько недель после релиза. Компания Ascendant Studios, создавшая игру Immortals of Aveum, сократила почти половину своего штата, сообщили три сотрудника студии. По оценкам сотрудников, до увольнения в студии работало от 80 до 100 человек, а сокращено было около 40. Генеральный директор Ascendant Брет Роббинс (Bret Robbins) объявил об увольнениях на собрании в четверг.',
        DateTime.now(),
        'https://i.playground.ru/p/dZKnhZMm5eKwNm5914JT8w.jpeg',
        comments: [
          Comment('User1', 'Comment 1 here'),
          Comment('User2', 'Comment 2 here'),
          Comment('User3', 'Comment 3 here'),
          Comment('User4', 'Comment 4 here'),
          Comment('User5', 'Comment 5 here'),
          Comment('User6', 'Comment 6 here'),
          Comment('User7', 'Comment 7 here')
        ]),
    News(
        'Remedy показала, как изменился хоррор Alan Wake 2 за три года разработки" ',
        'На The Game Awards в 2021 году Remedy Entertainment официально анонсировала долгожданное продолжение психологического триллера Alan Wake. Сиквел пережил тернистый путь разработки и несколько трансформаций, которые в итоге сделали его полноценным хоррором с элементами мистики, детектива и выживания. Авторы Alan Wake 2 наглядно показали, как изменилась игра за три года активной разработки.',
        DateTime.now(),
        'https://i.playground.ru/p/uil--74pW6y3NHMFm8uw5Q.jpeg'),
    News(
        'Сиквел Rust не будет разрабатываться на Unity ',
        'Гэрри Ньюман, основатель студии Facepunch, известной по Rust, высказал свое мнение о недавних изменениях в Unity, в частности о грядущей системе "налога за установку" Вкратце, Ньюман раскритиковал этот выбор и подтвердил, что Rust 2 не будет разрабатываться на Unity. Интересно то, что Rust 2 еще не была официально представлена или подтверждена, поэтому слова Ньюмана, по сути, являются анонсом',
        DateTime.now(),
        'https://i.playground.ru/p/vHUzNvoZj9p0xz-tR_7ALw.jpeg'),
    News(
        'Sony present information',
        'Sony Interactive Entertainment только что объявила о новой презентации State of Play, сообщив, что она запланирована на пятницу, 15 сентября 2023 года, в 00:00 по московскому времени. Японский гигант сделал это важное объявление в сообщении в блоге PlayStation, а также поделился следующим сообщением:',
        DateTime.now(),
        'https://blog.ja.playstation.com/tachyon/sites/7/2060/09/b90cc9b5a1773d60f8dfe711e454ec9491324d88.png?resize=1088%2C612&crop_strategy=smart&zoom=1.5'),
  ];
  List<String> _month = <String>[
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Now',
    'Dec'
  ];

  List<Widget> _buildNewsList(List<News> _newsList) {
    List<Widget> _newsRows = [];

    _newsList.forEach((element) {
      _newsRows.add(Padding(
        padding: const EdgeInsets.fromLTRB(4, 5, 4, 15),
        child: Card(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4)),
                child: Container(
                  child: element.imageUrl.isEmpty
                      ? Container()
                      : Image.network(
                          element.imageUrl,
                          fit: BoxFit.fill,
                        ),
                  // height: 255, width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(
                          255, 219, 219, 219)), //цвет за картинкой
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: ListTile(
                  title: Text(
                    element.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    element.body,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                      size: 30,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      //кнопка перехода на новость
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              NewsDescription(news: element)));
                    },
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.red,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.comment,
                            color: element.comments.isEmpty
                                ? Colors.black
                                : Colors.blue,
                          ),
                          Text(
                              ' ${element.comments.isEmpty ? '' : element.comments.length}')
                        ],
                      ),
                    ),
                    Text(
                      '${element.date.day}, ${_month[element.date.month - 1]}',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ));
    });
    return _newsRows;
  }

  void _selectItemInPopup(PopupMenuEntries _selected) {
    switch (_selected) {
      case PopupMenuEntries.ADDNEWS:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => AddPost()));
        break;
      case PopupMenuEntries.USERPROFILE:
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserProfile()));
        break;
      default:
      
    }

    print(_selected.toString());
  }

  PopupMenuEntries? selectedMenu;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(
                onSelected: ((value) => _selectItemInPopup(value)),
                itemBuilder: ((context) => <PopupMenuEntry<PopupMenuEntries>>[
                      PopupMenuItem(
                          // value: PopupMenuEntries.BRIGHTNESSSWITCH,
                          child: Row(
                        children: [
                          Text('Brightness'),
                          Switch(
                              value: true,
                              onChanged: (val) => _selectItemInPopup(
                                  PopupMenuEntries.BRIGHTNESSSWITCH))
                        ],
                      )),
                      PopupMenuItem(
                          value: PopupMenuEntries.USERPROFILE,
                          child: Text('User')),
                          PopupMenuItem(
                          value: PopupMenuEntries.ADDNEWS,
                          child: Text('Add post'))
                    ]))
          ],
          title: Text(
            "News",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          //scrollDirection: Axis.horizontal, ?
          children: _buildNewsList(_news),
        ));
  }
}
