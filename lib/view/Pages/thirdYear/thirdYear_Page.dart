import 'package:feg_success/view/Widgets/third_year/thirdYear_widget.dart';
import 'package:flutter/material.dart';

class ThirdYearPage extends StatefulWidget {
  const ThirdYearPage({Key? key}) : super(key: key);

  @override
  State<ThirdYearPage> createState() => _ThirdYearPageState();
}

class _ThirdYearPageState extends State<ThirdYearPage> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ThirdYearWidget()));
      },
      child: const Text(
        "gestion",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
