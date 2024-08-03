import 'package:flutter/material.dart';

import '../../Widgets/second_Year/secondYear_widget.dart';

class SecondYearPage extends StatefulWidget {
  const SecondYearPage({Key? key}) : super(key: key);

  @override
  State<SecondYearPage> createState() => _SecondYearPageState();
}

class _SecondYearPageState extends State<SecondYearPage> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => SecondYearWidget())));
      },
      child: const Text(
        "2ér Année",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
