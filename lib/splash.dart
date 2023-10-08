import 'package:flutter/material.dart';
import 'package:project/news_main_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 2), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => NewsMainPage(
                  title: '',
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image(image: AssetImage('assets/images/splashscreen.png')),
          // Text('HOT NEWS', style: TextStyle(
          //   fontSize: 24,
          //   fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
