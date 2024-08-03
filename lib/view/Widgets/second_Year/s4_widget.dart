import 'package:flutter/material.dart';

class S4Widget extends StatefulWidget {
  const S4Widget({Key? key}) : super(key: key);

  @override
  State<S4Widget> createState() => _S4WidgetState();
}

class _S4WidgetState extends State<S4Widget> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 180, 185, 180),
      appBar: AppBar(
        title: const Text("S4"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 95, 94, 94),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: LayoutBuilder(
                builder: ((context, constraints) {
                  var deviceType = getDeviceType(mediaQueryData);
                  print(deviceType);
                  double localHeight = constraints.maxHeight;
                  double localWidth = constraints.maxWidth;
                  return Center();
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

DeviceType getDeviceType(MediaQueryData mediaQueryData) {
  Orientation orientation = mediaQueryData.orientation;
  double width = 0;
  if (orientation == Orientation.landscape) {
    width = mediaQueryData.size.height;
  } else {
    width = mediaQueryData.size.width;
  }
  if (width >= 950) {
    return DeviceType.Desktop;
  }
  if (width >= 600) {
    return DeviceType.Tablet;
  }
  return DeviceType.Mobile;
}

enum DeviceType {
  Mobile,
  Tablet,
  Desktop,
}
