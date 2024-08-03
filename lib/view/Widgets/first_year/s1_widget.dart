import 'package:flutter/material.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
import 'package:flutter_document_picker/flutter_document_picker.dart'; 

class S1Widget extends StatefulWidget {
  const S1Widget({Key? key}) : super(key: key);

  @override
  State<S1Widget> createState() => _S1WidgetState();
}

class _S1WidgetState extends State<S1Widget> {
  bool _isLoading = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 180, 185, 180),
      appBar: AppBar(
        title: const Text("S1"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 95, 94, 94),
      ),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: LayoutBuilder(
                builder: ((context, constraints) {
                  return const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Comtabilité Générale : ",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 23,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Cours : ",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w700,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
