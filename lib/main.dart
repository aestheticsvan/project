import 'package:flutter/material.dart';
import 'package:project/model/news.dart';
import 'package:project/news_description.dart';

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
       scaffoldBackgroundColor: Colors.white,
       primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Новости'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  List<News> _news = [
    News('Тодд Говард: "А мы Starfield выпустили"', 'ничего интересного', DateTime.now(), 'https://i.playground.ru/p/dZKnhZMm5eKwNm5914JT8w.jpeg'),
    News('Remedy показала, как изменился хоррор Alan Wake 2 за три года разработки" ', 'На The Game Awards в 2021 году Remedy Entertainment официально анонсировала долгожданное продолжение психологического триллера Alan Wake. Сиквел пережил тернистый путь разработки и несколько трансформаций, которые в итоге сделали его полноценным хоррором с элементами мистики, детектива и выживания. Авторы Alan Wake 2 наглядно показали, как изменилась игра за три года активной разработки.', DateTime.now(), 'https://i.playground.ru/p/uil--74pW6y3NHMFm8uw5Q.jpeg'),
    News('Сиквел Rust не будет разрабатываться на Unity ', 'Гэрри Ньюман, основатель студии Facepunch, известной по Rust, высказал свое мнение о недавних изменениях в Unity, в частности о грядущей системе "налога за установку" Вкратце, Ньюман раскритиковал этот выбор и подтвердил, что Rust 2 не будет разрабатываться на Unity. Интересно то, что Rust 2 еще не была официально представлена или подтверждена, поэтому слова Ньюмана, по сути, являются анонсом' , DateTime.now(), 'https://i.playground.ru/p/vHUzNvoZj9p0xz-tR_7ALw.jpeg'),
    News('Погода на сегодня', 'Sony Interactive Entertainment только что объявила о новой презентации State of Play, сообщив, что она запланирована на пятницу, 15 сентября 2023 года, в 00:00 по московскому времени. Японский гигант сделал это важное объявление в сообщении в блоге PlayStation, а также поделился следующим сообщением:', DateTime.now(), ''),
  ];
List<String> _month = [
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

  List<Widget> _buildNewsList(List<News> _newsList){
    List<Widget> _newsRows = [];

    _newsList.forEach((element) {
      _newsRows.add(
        Card(
          child: Column(
            children: [
              Container(
                child: element.imageUrl.isEmpty?Container():Image.network(element.imageUrl),
                height: 200,
                color: Color.fromARGB(255, 159, 104, 108),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                title: Text(element.name, style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text(element.body, style: TextStyle(fontStyle: FontStyle.italic),),
                trailing: IconButton(icon: Icon(Icons.arrow_circle_right, size: 30,),onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  NewsDescription(news: element)));
                },),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.heart_broken_sharp),
                    Text('${element.date.day}, ${_month[element.date.month-1]}')
                  ],
                ),
              )
            ],
          ),
        ));
     });
    return _newsRows;
    
  }
  Widget build(BuildContext context) { 
    return  Scaffold(
        appBar: AppBar(
          title: Text("NEWS", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),
          backgroundColor: Colors.red, 
        ),
        
        body: ListView(
          children: _buildNewsList(_news),
        )
     );
  }
}


