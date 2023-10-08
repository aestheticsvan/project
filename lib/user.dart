// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final style = ButtonStyle(
    );
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton.icon(style: style,
                              onPressed: () {print(1);}, icon: const Icon(Icons.create), label: const Text('Edit profile'),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton.icon(style: style,
                              onPressed: () {print(2);}, icon: const Icon(Icons.favorite), label: const Text('Liked posts'),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton.icon(style: style,
                              onPressed: () {print(3);}, icon: const Icon(Icons.settings), label: const Text('Settings'),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton.icon(style: style,
                              onPressed: () {print(4);}, icon: const Icon(Icons.lock), label: const Text('Privacy'),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton.icon(style: style,
                              onPressed: () {print(5);}, icon: const Icon(Icons.logout), label: const Text('Log out'),),
                        ],
                      ),
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
