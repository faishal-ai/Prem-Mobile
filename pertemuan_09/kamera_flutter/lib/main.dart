import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'widget/takepicture_screen.dart';

Future<void> main() async {
  // Pastikan plugin kamera sudah diinisialisasi
  WidgetsFlutterBinding.ensureInitialized();

  // Ambil daftar kamera yang tersedia di device
  final cameras = await availableCameras();

  // Ambil kamera pertama (biasanya kamera belakang)
  final firstCamera = cameras.first;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: TakePictureScreen(camera: firstCamera),
    ),
  );
}
