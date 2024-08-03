//import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
//import 'package:flutter/material.dart';
//import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

//class LoadPDF extends StatefulWidget {
 // const LoadPDF({Key? key}) : super(key: key);

 // @override
//  State<LoadPDF> createState() => _LoadPDFState();
//}

//class _LoadPDFState extends State<LoadPDF> {
 // firebase_storage.FirebaseStorage storage =
   //   firebase_storage.FirebaseStorage.instance;

  //Future<void> listExample() async {
    //firebase_storage.ListResult result = await firebase_storage
      //  .FirebaseStorage.instance
      //  .ref()
      //  .child("pdf's")
      //  .listAll();

    //result.items.forEach((firebase_storage.Reference ref) {
     // print('Found file: $ref');
    //});

    ///result.prefixes.forEach((firebase_storage.Reference ref) {
     // print('Found directory: $ref');
   // });
 // }

  //Future<void> downloadURLExample() async {
    //String downloadURL = await firebase_storage.FirebaseStorage.instance
        //.ref("pdf's/partie2.pdf")
       // .getDownloadURL();
   // print(downloadURL);
    //PDFDocument doc = await PDFDocument.fromURL(downloadURL);
   // Navigator.push(
      //  context,
      //  MaterialPageRoute(
          //  builder: (context) =>
             //   ViewPDF(doc))); //Notice the Push Route once this is done.
  //}

 // @override
  //void initState() {
    // TODO: implement initState
    //super.initState();
    //listExample();
    //downloadURLExample();
   // print("All done!");
  //}

  //@override
  //Widget build(BuildContext context) {
    //return Center(child: CircularProgressIndicator());
  //}
//}

//class ViewPDF extends StatelessWidget {
  //const ViewPDF({Key? key}) : super(key: key);

  //@override
  //Widget build(BuildContext context) {

    
    //return Container();
  //}
//}