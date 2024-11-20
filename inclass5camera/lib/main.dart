import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'screens/take_picture_screen.dart';

Future<void> main() async {
  // Ensure that plugin services are initialized to use `availableCameras()`
  WidgetsFlutterBinding.ensureInitialized();

  // Retrieve the list of available cameras on the device.
  final cameras = await availableCameras();

  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakePictureScreen(cameras: cameras),
    ),
  );
}