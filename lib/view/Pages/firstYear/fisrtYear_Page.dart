import 'package:feg_success/view/Widgets/first_year/firstYear_Widget.dart';
import 'package:flutter/material.dart';

class FirstYearPage extends StatefulWidget {
  const FirstYearPage({Key? key}) : super(key: key);

  @override
  State<FirstYearPage> createState() => _FirstYearPageState();
}

class _FirstYearPageState extends State<FirstYearPage> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => FirstYearWidget())));
      },
      child: const Text(
        "1ér Année",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      
    );
  }
}
