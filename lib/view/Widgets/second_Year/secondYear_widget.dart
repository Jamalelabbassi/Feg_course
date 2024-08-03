import 'package:flutter/material.dart';

import 's3_widget.dart';
import 's4_widget.dart';


class SecondYearWidget extends StatefulWidget {
  SecondYearWidget({Key? key}) : super(key: key);

  @override
  State<SecondYearWidget> createState() => _SecondYearWidgetState();
}

class _SecondYearWidgetState extends State<SecondYearWidget> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 180, 185, 180),
            appBar: AppBar(
              title: const Text("2éme Année"),
              centerTitle: true,
              backgroundColor: const Color(0xFF424242),
              // ignore: prefer_const_constructors
              bottom: TabBar(
                tabs: const [
                  Tab(
                      text: 'S3',
                      icon: Icon(
                        Icons.book,
                      )),
                  Tab(
                    text: 'S4',
                    icon: Icon(Icons.book),
                  ),
                  
                ],
              ),
            ),
            body:  const TabBarView(children: [
                S3Widget(),
                S4Widget(),
              ]),
            ));
  }
}