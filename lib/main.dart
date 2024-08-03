import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'view/Pages/homePage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      builder: DevicePreview.appBuilder,
      home: HomePage(),
    );
  }
}
