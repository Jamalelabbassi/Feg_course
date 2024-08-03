import 'package:feg_success/view/Pages/firstYear/fisrtYear_Page.dart';
import 'package:feg_success/view/Pages/secondYear/secondYear_Page.dart';
import 'package:feg_success/view/Pages/thirdYear/thirdYear_Page.dart';
import 'package:flutter/material.dart';

class AcademicYear extends StatefulWidget {
  AcademicYear({Key? key}) : super(key: key);

  @override
  State<AcademicYear> createState() => _AcademicYearState();
}

class _AcademicYearState extends State<AcademicYear> {
  @override
  Widget build(BuildContext context) {
    String title = "FEG SUCCESS";
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 180, 185, 180),
            appBar: AppBar(
              title: Text(title),
              centerTitle: true,
              backgroundColor: const Color(0xFF424242),
              // ignore: prefer_const_constructors
              bottom: TabBar(
                tabs: const [
                  Tab(
                      text: '1ér Année',
                      icon: Icon(
                        Icons.school,
                      )),
                  Tab(
                    text: '2éme Année',
                    icon: Icon(Icons.school),
                  ),
                  Tab(
                    text: '3éme Année',
                    icon: Icon(Icons.school),
                  ),
                ],
              ),
            ),
            body:  const TabBarView(children: [
                Center(child: FirstYearPage()),
                Center(child: SecondYearPage()),
                Center(child: ThirdYearPage()),
              ]),
            ));
  }
}

