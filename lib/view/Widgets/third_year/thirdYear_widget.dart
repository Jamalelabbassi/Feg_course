import 'package:flutter/material.dart';

import 's5_widget.dart';
import 's6_widget.dart';


class ThirdYearWidget extends StatefulWidget {
  ThirdYearWidget({Key? key}) : super(key: key);

  @override
  State<ThirdYearWidget> createState() => _ThirdYearWidgetState();
}

class _ThirdYearWidgetState extends State<ThirdYearWidget> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 180, 185, 180),
            appBar: AppBar(
              title: Text("Gestion"),
              centerTitle: true,
              backgroundColor: const Color(0xFF424242),
              // ignore: prefer_const_constructors
              bottom: TabBar(
                tabs: const [
                  Tab(
                      text: 'S5',
                      icon: Icon(
                        Icons.book,
                      )),
                  Tab(
                    text: 'S6',
                    icon: Icon(Icons.book),
                  ),
                  
                ],
              ),
            ),
            body:  const TabBarView(children: [
                S5Widget(),
                S6Widget(),
              ]),
            ));
  }
}
