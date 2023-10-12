// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/widgets/elbutton.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  void printEdit() {
    print('Edit');
  }

  void printLiked() {
    print('Liked posts');
  }

  void printSettings() {
    print('Settings');
  }

  void printPrivacy() {
    print('Privacy');
  }

  void printLog_out() {
    print('Log out');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final style = ButtonStyle();
    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  //user profile
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                    radius: 50,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '@andrew',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '+7-(999)-999-99-99',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'from San Francisco',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      ElButton(
                        title: 'Edit',
                        icon: Icons.edit,
                        icon1: Icons.keyboard_arrow_right,
                        onPressed: () {
                          print('Edit');
                        },
                      ),
                      ElButton(
                          title: 'Liked posts',
                          icon: Icons.favorite,
                          icon1: Icons.keyboard_arrow_right,
                          onPressed: () {
                            print('Liked posts');
                          }),
                      ElButton(
                          title: 'Settings',
                          icon: Icons.settings,
                          icon1: Icons.keyboard_arrow_right,
                          onPressed: () {
                            print('Settings');
                          }),
                      ElButton(
                          title: 'Privacy',
                          icon: Icons.lock,
                          icon1: Icons.keyboard_arrow_right,
                          onPressed: () {
                            print('Privacy');
                          }),
                      ElButton(
                          title: 'Log out',
                          icon: Icons.logout,
                          icon1: Icons.keyboard_arrow_right,
                          onPressed: () {
                            print('Log out');
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
