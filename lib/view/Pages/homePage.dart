import 'package:feg_success/view/Pages/signUp_Page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 180, 185, 180),
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 36, right: 36),
        child: Container(
          alignment: Alignment.center,
          child: ListView(

            children: [
              Image.asset("assets/images/Fegpic.jpeg"),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Find Your Course And Exercice',
                style: GoogleFonts.poppins(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 33,
              ),
              const Text("""In This App you can Find FEG course , TD's
             and anciens Exams \n For Help you to SUCCESS , GOOD LUCK """),
              Padding(
                padding: const EdgeInsets.only(top: 129),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SignUpPagee())));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 56,
                    width: 315,
                    decoration: BoxDecoration(
                      color: const Color(0xff6CC4EE),
                      borderRadius: BorderRadius.circular(34),
                    ),
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

