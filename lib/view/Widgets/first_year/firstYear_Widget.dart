import 'package:feg_success/view/Widgets/first_year/s1_widget.dart';
import 'package:feg_success/view/Widgets/first_year/s2_widget.dart';
import 'package:flutter/material.dart';


class FirstYearWidget extends StatefulWidget {
  FirstYearWidget({Key? key}) : super(key: key);

  @override
  State<FirstYearWidget> createState() => _FirstYearWidgetState();
}

class _FirstYearWidgetState extends State<FirstYearWidget> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 180, 185, 180),
            appBar: AppBar(
              title: Text("1ér Année"),
              centerTitle: true,
              backgroundColor: const Color(0xFF424242),
              // ignore: prefer_const_constructors
              bottom: TabBar(
                tabs: const [
                  Tab(
                      text: 'S1',
                      icon: Icon(
                        Icons.book,
                      )),
                  Tab(
                    text: 'S2',
                    icon: Icon(Icons.book),
                  ),
                  
                ],
              ),
            ),
            body:  const TabBarView(children: [
                S1Widget(),
                S2Widget(),
              ]),
            ));
  }
}