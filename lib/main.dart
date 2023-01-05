// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: Scaffold(
        body: LayoutBuilder(
          builder: (context, costraints) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: costraints.maxWidth,
                  child: Card(
                    elevation: 0,
                    color: Color.fromARGB(255, 215, 126, 120),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            margin: EdgeInsets.all(10),
                            height: 20,
                            width: costraints.maxWidth / 4,
                            color: Colors.grey),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 20,
                          width: costraints.maxWidth / 1,
                          color: Color.fromARGB(255, 164, 221, 166),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Card(
                    elevation: 0,
                    child: Stack(children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 100,
                        color: Color.fromARGB(255, 215, 126, 120),
                      ),
                      Column(
                        children: [
                          Center(
                            child: Container(
                              height: 30,
                              width: costraints.maxWidth / 4,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.all(10),
                              height: 20,
                              width: costraints.maxWidth,
                              color: Color.fromARGB(255, 164, 221, 166),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              ],
            );
          },
        ),
      )),
    );
  }
}
