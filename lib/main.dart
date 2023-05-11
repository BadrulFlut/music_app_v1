import 'package:mafia_music/core.dart';
import 'package:mafia_music/module/home/view/home_view.dart';
import 'package:mafia_music/state_util.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      home: const DetailMusicView(),
    );
  }
}
