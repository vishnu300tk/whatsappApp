import 'package:flutter/material.dart';
import 'package:whatsapp_app/home/updates.dart';
import 'package:whatsapp_app/splashScreen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  // Initialize adapters and open boxes if needed
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        child: UpdatesPage
        (),
        ),
    );
  }
}
