import 'package:camera/camera.dart';
import 'package:final_wiatalk/home.dart';
import 'package:flutter/material.dart';
import 'package:final_wiatalk/cameraScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WiaTalk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      // home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
